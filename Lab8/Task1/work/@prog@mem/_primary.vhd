library verilog;
use verilog.vl_types.all;
entity ProgMem is
    port(
        Run             : in     vl_logic;
        isDone          : in     vl_logic;
        DIN             : out    vl_logic_vector(15 downto 0)
    );
end ProgMem;
