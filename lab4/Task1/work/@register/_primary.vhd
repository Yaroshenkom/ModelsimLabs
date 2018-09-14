library verilog;
use verilog.vl_types.all;
entity \Register\ is
    port(
        \in\            : in     vl_logic_vector(7 downto 0);
        set             : in     vl_logic;
        clr             : in     vl_logic;
        clk             : in     vl_logic;
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end \Register\;
