library verilog;
use verilog.vl_types.all;
entity AU is
    port(
        clk             : in     vl_logic;
        mode            : in     vl_logic;
        reset           : in     vl_logic;
        action          : in     vl_logic_vector(2 downto 0);
        ReA             : in     vl_logic_vector(15 downto 0);
        ReB             : in     vl_logic_vector(15 downto 0);
        ImA             : in     vl_logic_vector(15 downto 0);
        ImB             : in     vl_logic_vector(15 downto 0);
        C               : out    vl_logic;
        CC              : out    vl_logic;
        ReOut           : out    vl_logic_vector(15 downto 0);
        ImOut           : out    vl_logic_vector(15 downto 0)
    );
end AU;
