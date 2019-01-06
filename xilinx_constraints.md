# Xilinx Constraints

## Documents

- UG945: Vivado Using Constraints Tutorial
- UG903: Vivado Using Constraints __(MUST READ!)__
	- Ch.3 Defining Clocks
		- Primary clocks
			- `create_clock -period 10 [get_ports sysclk]`
			- `create_clock -name devclk -period 10 -waveform {2.5 5} [get_ports ClkIn]`
		- Virtual clocks
			- `create_clock -name clk_virt -period 10`
		- Generated clocks
			- `create_generated_clock -name clkdiv2 -source [get_ports clkin] -divide_by 2 [get_pins REGA/Q]`
- UG912: Vivado Properties Reference Guide
	- It's a reference.
- UG949

## Recommended Constraints Ordering

Ref: UG903
```
## Timing Assertions Section
# Primary clocks
# Virtual clocks
# Generated clocks
# Clock Groups
# Bus Skew constraints
# Input and output delay constraints

## Timing Exceptions Section
# False Paths
# Max Delay / Min Delay
# Multicycle Paths
# Case Analysis
# Disable Timing

## Physical Constraints Section
# located anywhere in the file, preferably before or after the timing constraints
# or stored in a separate constraint file
```

## Compilation Ordering

Ref: UG903
```
1. User Constraints marked as EARLY
2. IP Constraints marked as EARLY (default)
3. User Constraints marked as NORMAL
4. IP Constraints marked as LATE (contain clock dependencies)
5. User Constraints marked as LATE

Note: IP XDC files that have their PROCESSING_ORDER set to LATE (in order to be processed after
the user constraints) are named <IP_NAME>_clocks.xdc.
```

Tcl command:
```
report_compile_order -constraints
```

## Commands

Report
```
report_methodology
report_exceptions
```