library verilog;
use verilog.vl_types.all;
entity SignExtend is
    port(
        i_data          : in     vl_logic_vector(15 downto 0);
        o_data          : out    vl_logic_vector(31 downto 0);
        i_issign        : in     vl_logic
    );
end SignExtend;
