library verilog;
use verilog.vl_types.all;
entity Processor is
    port(
        Reset           : in     vl_logic;
        clk             : in     vl_logic;
        Run             : in     vl_logic;
        DIN             : in     vl_logic_vector(15 downto 0);
        Done            : out    vl_logic;
        Bus_out         : out    vl_logic_vector(15 downto 0)
    );
end Processor;
