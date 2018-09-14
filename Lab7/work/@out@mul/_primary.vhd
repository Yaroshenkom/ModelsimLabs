library verilog;
use verilog.vl_types.all;
entity OutMul is
    port(
        AUout           : in     vl_logic_vector(15 downto 0);
        AUoutC          : in     vl_logic_vector(15 downto 0);
        CUout           : in     vl_logic_vector(15 downto 0);
        CUoutC          : in     vl_logic_vector(15 downto 0);
        AUC             : in     vl_logic;
        AUCC            : in     vl_logic;
        CUC             : in     vl_logic;
        CUCC            : in     vl_logic;
        command         : in     vl_logic_vector(2 downto 0);
        \Out\           : out    vl_logic_vector(15 downto 0);
        OutC            : out    vl_logic_vector(15 downto 0);
        C               : out    vl_logic;
        CC              : out    vl_logic
    );
end OutMul;
