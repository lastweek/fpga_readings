# Xilinx Constraints

Constraints are essential. Constraints are not that hard to understand and use.
I know it might be a little bit overwhelmed, but take your time and be patient on this topic.

You will be able to find XDC template inside Vivado: Open `Tools->Language Temlates->XDC`.
It can give you a complete list of available XDC commands, and they are organized
by catagories. Also, you can see all the Timing related constraints in `Edit Timing COnstraints` sidebar.

When in doubt, read UG903 and UG949.

## References

- __UG903__ Vivado Using Constraints (Must read)
- __UG945__ Vivado Using Constraints Tutorial (Lab)
- __UG912__ Vivado Properties Reference Guide (Ref)
- __UG949__ UltraFast Design Methodology Guide for the Vivado (Overall)
	- Chapter 3 -> Working with constraints.

## Recommended Constraints Ordering

UG903 about ordering:
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

It matters.

UG903 Chapter 7 XDC Precedence:
```
1. User Constraints marked as EARLY
2. IP Constraints marked as EARLY (default)
3. User Constraints marked as NORMAL
4. IP Constraints marked as LATE (contain clock dependencies)
5. User Constraints marked as LATE

Note: IP XDC files that have their PROCESSING_ORDER set to LATE (in order to be processed after
the user constraints) are named <IP_NAME>_clocks.xdc.
```

Another note on IP XDC from UG903:
By default, IP XDC files are read in before the user XDC files. Processing it in this way allows
an IP to create a clock object that can be referenced in the XDC. It also allows you to
overwrite physical constraints set by an IP core because the user constraints are evaluated
after the IP. There is an exception to this order for the IP cores that have a dependency on
clock objects being created by the user or by another IP (for example, `get_clocks
-of_objects [get_ports clka]`). In this case, the IP XDC is read after the user files.

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
