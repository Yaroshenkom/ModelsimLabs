library verilog;
use verilog.vl_types.all;
entity Automate is
    generic(
        state_0         : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi0, Hi0);
        state_1         : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi0, Hi1);
        state_2         : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi1, Hi0);
        state_3         : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi1, Hi1);
        state_4         : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi0, Hi0);
        state_5         : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi0, Hi1);
        state_6         : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi1, Hi0);
        state_7         : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi1, Hi1);
        state_8         : vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi0, Hi0);
        state_9         : vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi0, Hi1)
    );
    port(
        clk             : in     vl_logic;
        x1              : in     vl_logic;
        x2              : in     vl_logic;
        Reset           : in     vl_logic;
        \out\           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of state_0 : constant is 2;
    attribute mti_svvh_generic_type of state_1 : constant is 2;
    attribute mti_svvh_generic_type of state_2 : constant is 2;
    attribute mti_svvh_generic_type of state_3 : constant is 2;
    attribute mti_svvh_generic_type of state_4 : constant is 2;
    attribute mti_svvh_generic_type of state_5 : constant is 2;
    attribute mti_svvh_generic_type of state_6 : constant is 2;
    attribute mti_svvh_generic_type of state_7 : constant is 2;
    attribute mti_svvh_generic_type of state_8 : constant is 2;
    attribute mti_svvh_generic_type of state_9 : constant is 2;
end Automate;
