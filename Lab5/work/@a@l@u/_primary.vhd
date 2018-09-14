library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        op_code         : in     vl_logic_vector(1 downto 0);
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        Cin             : in     vl_logic;
        Cout            : out    vl_logic;
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end ALU;
