library verilog;
use verilog.vl_types.all;
entity BCDcoder is
    port(
        \in\            : in     vl_logic_vector(9 downto 0);
        \out\           : out    vl_logic_vector(4 downto 0)
    );
end BCDcoder;
