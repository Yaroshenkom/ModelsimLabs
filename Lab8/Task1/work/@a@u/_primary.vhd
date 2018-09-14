library verilog;
use verilog.vl_types.all;
entity AU is
    port(
        AddSubb         : in     vl_logic;
        A_in            : in     vl_logic_vector(15 downto 0);
        R_in            : in     vl_logic_vector(15 downto 0);
        \out\           : out    vl_logic_vector(15 downto 0)
    );
end AU;
