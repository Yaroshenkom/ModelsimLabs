library verilog;
use verilog.vl_types.all;
entity multiplexer is
    port(
        in0             : in     vl_logic_vector(7 downto 0);
        in1             : in     vl_logic_vector(7 downto 0);
        in2             : in     vl_logic_vector(7 downto 0);
        in3             : in     vl_logic_vector(7 downto 0);
        ad              : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end multiplexer;
