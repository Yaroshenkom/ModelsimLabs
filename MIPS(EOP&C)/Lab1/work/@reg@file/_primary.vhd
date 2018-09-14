library verilog;
use verilog.vl_types.all;
entity RegFile is
    port(
        i_clk           : in     vl_logic;
        i_raddr1        : in     vl_logic_vector(4 downto 0);
        i_raddr2        : in     vl_logic_vector(4 downto 0);
        i_waddr         : in     vl_logic_vector(4 downto 0);
        i_wdata         : in     vl_logic_vector(31 downto 0);
        i_we            : in     vl_logic;
        o_rdata1        : out    vl_logic_vector(31 downto 0);
        o_rdata2        : out    vl_logic_vector(31 downto 0)
    );
end RegFile;
