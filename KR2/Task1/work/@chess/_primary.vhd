library verilog;
use verilog.vl_types.all;
entity Chess is
    port(
        enload          : in     vl_logic;
        reset           : in     vl_logic;
        count1          : in     vl_logic;
        count2          : in     vl_logic;
        clk             : in     vl_logic;
        \in\            : in     vl_logic_vector(7 downto 0);
        fin             : out    vl_logic;
        out1            : out    vl_logic_vector(7 downto 0);
        out2            : out    vl_logic_vector(7 downto 0)
    );
end Chess;
