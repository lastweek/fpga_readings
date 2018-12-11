-- -----------------------------------------------------------------------------
-- (c) Copyright 2010 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- -----------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Filename:        tri_mode_ethernet_mac_0_axi4_lite_ipif_wrapper.vhd
-- Version:         v1.00.a
-- Description:     A simple wrapper to convert between aloowed generics etc
--                 in verilog and those used in the axi_ipif block
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library axi_lite_ipif_v3_0_4;
use axi_lite_ipif_v3_0_4.all;
use axi_lite_ipif_v3_0_4.ipif_pkg.all;

entity tri_mode_ethernet_mac_0_axi4_lite_ipif_top is
    generic (
      C_S_AXI_ADDR_WIDTH    : integer                       := 32;
      C_ADDR_RANGE_SIZE     : std_logic_vector(31 downto 0) := X"000007FF"
      );
    port (

        --System signals
      S_AXI_ACLK            : in  std_logic;
      S_AXI_ARESETN         : in  std_logic;
      S_AXI_AWADDR          : in  std_logic_vector(11 downto 0);
      S_AXI_AWVALID         : in  std_logic;
      S_AXI_AWREADY         : out std_logic;
      S_AXI_WDATA           : in  std_logic_vector(31 downto 0);
      S_AXI_WVALID          : in  std_logic;
      S_AXI_WREADY          : out std_logic;
      S_AXI_BRESP           : out std_logic_vector(1 downto 0);
      S_AXI_BVALID          : out std_logic;
      S_AXI_BREADY          : in  std_logic;
      S_AXI_ARADDR          : in  std_logic_vector(11 downto 0);
      S_AXI_ARVALID         : in  std_logic;
      S_AXI_ARREADY         : out std_logic;
      S_AXI_RDATA           : out std_logic_vector(31 downto 0);
      S_AXI_RRESP           : out std_logic_vector(1 downto 0);
      S_AXI_RVALID          : out std_logic;
      S_AXI_RREADY          : in  std_logic;
      -- Controls to the IP/IPIF modules
      Bus2IP_Clk            : out std_logic;
      Bus2IP_Reset          : out std_logic;
      Bus2IP_Addr           : out std_logic_vector(11 downto 0);
      Bus2IP_CS             : out std_logic;
      Bus2IP_RdCE           : out std_logic;
      Bus2IP_WrCE           : out std_logic;
      Bus2IP_Data           : out std_logic_vector(31 downto 0);
      IP2Bus_Data           : in  std_logic_vector(31 downto 0);
      IP2Bus_WrAck          : in  std_logic;
      IP2Bus_RdAck          : in  std_logic;
      IP2Bus_Error          : in  std_logic
       );
end tri_mode_ethernet_mac_0_axi4_lite_ipif_top;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------

architecture rtl of tri_mode_ethernet_mac_0_axi4_lite_ipif_top is

-- Stats 200-3FF, MAC 400-5FF, INTC 600-6FF, ADR 700-7FF
constant C_S_AXI_ADDR_PADDING_WIDTH : positive := C_S_AXI_ADDR_WIDTH - 12; 
constant C_S_AXI_ADDR_PADDING       : std_logic_vector(C_S_AXI_ADDR_PADDING_WIDTH-1 downto 0) := (others => '0');

signal bus2ip_clk_int       : std_logic;
signal bus2ip_resetn_int    : std_logic;
signal bus2ip_addr_int      : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
signal bus2ip_cs_int        : std_logic_vector(0 downto 0);
signal bus2ip_rdce_int      : std_logic_vector(0 downto 0);
signal local_wrack          : std_logic;
signal local_rdack          : std_logic;
signal cs_edge_reg          : std_logic;
signal ip2bus_rdack_comb    : std_logic;
signal ip2bus_wrack_comb    : std_logic;
signal bus2ip_wrce_int      : std_logic_vector(0 downto 0);
signal s_axi_awaddr_int     : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
signal s_axi_araddr_int     : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);

-------------------------------------------------------------------------------
-- Begin architecture logic
-------------------------------------------------------------------------------
begin

   Bus2IP_Clk       <= bus2ip_clk_int;
   Bus2IP_Reset     <= not bus2ip_resetn_int;
   Bus2IP_Addr      <= bus2ip_addr_int(11 downto 0);
   Bus2IP_CS        <= bus2ip_cs_int(0);
   Bus2IP_RdCE      <= bus2ip_rdce_int(0);
   Bus2IP_WrCE      <= bus2ip_wrce_int(0);
   s_axi_awaddr_int <= C_S_AXI_ADDR_PADDING & S_AXI_AWADDR;
   s_axi_araddr_int <= C_S_AXI_ADDR_PADDING & S_AXI_ARADDR;

   -- The axi_ipif_wrapper can only handle address ranges which are a power of 2 in size and
   -- the address range base address must be aligned to the same power of 2.  For example
   -- with a C_ADDR_RANGE_SIZE of 0x7FF the base address could be 0x000, 0x800, 0x1000 etc.
   -- The TEMAC address range is 0x200-0x7FF with 0x0-0x1FF being reserved.  Since the TEMAC
   -- doesn't use the 0x0-0x1FF range logic has been included to automatically ACK this range.
   axi_lite_top: entity axi_lite_ipif_v3_0_4.axi_lite_ipif
    generic map (
      C_S_AXI_DATA_WIDTH     => 32,
      C_S_AXI_ADDR_WIDTH     => C_S_AXI_ADDR_WIDTH,
      C_S_AXI_MIN_SIZE       => C_ADDR_RANGE_SIZE,
      C_USE_WSTRB            => 0,
      C_DPHASE_TIMEOUT       => 64,
      C_ARD_ADDR_RANGE_ARRAY => (X"0000_0000_0000_0000",
                                 X"0000_0000" & C_ADDR_RANGE_SIZE),
      C_ARD_NUM_CE_ARRAY     => (0 => 1),
      C_FAMILY               => "virtex7"
           )
    port map (

        --System signals
      S_AXI_ACLK            => S_AXI_ACLK,
      S_AXI_ARESETN         => S_AXI_ARESETN,
      S_AXI_AWADDR          => s_axi_awaddr_int,

      S_AXI_AWVALID         => S_AXI_AWVALID,
      S_AXI_AWREADY         => S_AXI_AWREADY,
      S_AXI_WDATA           => S_AXI_WDATA,

      S_AXI_WSTRB           => "0000",

      S_AXI_WVALID          => S_AXI_WVALID,
      S_AXI_WREADY          => S_AXI_WREADY,
      S_AXI_BRESP           => S_AXI_BRESP,
      S_AXI_BVALID          => S_AXI_BVALID,
      S_AXI_BREADY          => S_AXI_BREADY,
      S_AXI_ARADDR          => s_axi_araddr_int,

      S_AXI_ARVALID         => S_AXI_ARVALID,
      S_AXI_ARREADY         => S_AXI_ARREADY,
      S_AXI_RDATA           => S_AXI_RDATA,

      S_AXI_RRESP           => S_AXI_RRESP,
      S_AXI_RVALID          => S_AXI_RVALID,
      S_AXI_RREADY          => S_AXI_RREADY,
      -- Controls to the IP/IPIF
      Bus2IP_Clk            => bus2ip_clk_int,
      Bus2IP_Resetn         => bus2ip_resetn_int,
      Bus2IP_Addr           => bus2ip_addr_int,

      Bus2IP_RNW            => open,
      Bus2IP_BE             => open,

      Bus2IP_CS             => bus2ip_cs_int,

      Bus2IP_RdCE           => bus2ip_rdce_int,

      Bus2IP_WrCE           => bus2ip_wrce_int,

      Bus2IP_Data           => Bus2IP_Data,

      IP2Bus_Data           => IP2Bus_Data,

      IP2Bus_WrAck          => ip2bus_wrack_comb,
      IP2Bus_RdAck          => ip2bus_rdack_comb,
      IP2Bus_Error          => IP2Bus_Error

    );

   local_ack_gen: process (bus2ip_clk_int)
      begin
         if bus2ip_clk_int'event and bus2ip_clk_int = '1' then
           if bus2ip_resetn_int = '0' then
              local_wrack <= '0';
              local_rdack <= '0';
              cs_edge_reg <= '0';
           else
              cs_edge_reg <= bus2ip_cs_int(0);

              if bus2ip_addr_int(11  downto 9) = "000" and
                 (bus2ip_cs_int(0) = '1' and cs_edge_reg = '0') then
                 if bus2ip_rdce_int(0) = '1' then
                    local_rdack <= '1';
                 end if;
                 if bus2ip_wrce_int(0) = '1' then
                    local_wrack <= '1';
                 end if;
              else
                 local_wrack <= '0';
                 local_rdack <= '0';
              end if;
           end if;
         end if;
      end process local_ack_gen;


  ip2bus_rdack_comb <= local_rdack or IP2Bus_RdAck;
  ip2bus_wrack_comb <= local_wrack or IP2Bus_WrAck;

end rtl;
