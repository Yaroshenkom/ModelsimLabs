library verilog;
use verilog.vl_types.all;
entity Control_unit is
    port(
        IR_in           : in     vl_logic_vector(8 downto 0);
        Run             : in     vl_logic;
        clk             : in     vl_logic;
        Reset           : in     vl_logic;
        Done            : out    vl_logic;
        adr             : out    vl_logic_vector(3 downto 0);
        we              : out    vl_logic_vector(3 downto 0);
        AddSubb         : out    vl_logic
    );
end Control_unit;
