library verilog;
use verilog.vl_types.all;
entity MyAutomate is
    generic(
        state_A         : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi0, Hi0);
        state_B         : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi0, Hi1);
        state_C         : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi1, Hi0);
        state_D         : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi1, Hi1);
        state_E         : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi0, Hi0);
        state_F         : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi0, Hi1);
        state_G         : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi1, Hi0);
        state_H         : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi1, Hi1);
        state_I         : vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi0, Hi0)
    );
    port(
        clk             : in     vl_logic;
        w               : in     vl_logic;
        Reset           : in     vl_logic;
        OUT1            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of state_A : constant is 2;
    attribute mti_svvh_generic_type of state_B : constant is 2;
    attribute mti_svvh_generic_type of state_C : constant is 2;
    attribute mti_svvh_generic_type of state_D : constant is 2;
    attribute mti_svvh_generic_type of state_E : constant is 2;
    attribute mti_svvh_generic_type of state_F : constant is 2;
    attribute mti_svvh_generic_type of state_G : constant is 2;
    attribute mti_svvh_generic_type of state_H : constant is 2;
    attribute mti_svvh_generic_type of state_I : constant is 2;
end MyAutomate;
