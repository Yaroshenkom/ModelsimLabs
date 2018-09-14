library verilog;
use verilog.vl_types.all;
entity task2 is
    port(
        x               : in     vl_logic;
        y               : in     vl_logic;
        z               : in     vl_logic;
        f               : out    vl_logic;
        f1              : out    vl_logic
    );
end task2;
