library verilog;
use verilog.vl_types.all;
entity ShiftLeftBy2 is
    port(
        i_data          : in     vl_logic_vector(31 downto 0);
        o_data          : out    vl_logic_vector(31 downto 0)
    );
end ShiftLeftBy2;
