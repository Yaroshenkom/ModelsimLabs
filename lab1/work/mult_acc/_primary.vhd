library verilog;
use verilog.vl_types.all;
entity mult_acc is
    generic(
        set             : integer := 10;
        hld             : integer := 20
    );
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        ina             : in     vl_logic_vector(7 downto 0);
        inb             : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        clr             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of set : constant is 1;
    attribute mti_svvh_generic_type of hld : constant is 1;
end mult_acc;
