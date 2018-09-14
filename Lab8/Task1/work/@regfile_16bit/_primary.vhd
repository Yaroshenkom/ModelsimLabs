library verilog;
use verilog.vl_types.all;
entity Regfile_16bit is
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        A_out           : out    vl_logic_vector(15 downto 0);
        \in\            : in     vl_logic_vector(15 downto 0);
        DIN_in          : in     vl_logic_vector(15 downto 0);
        G_in            : in     vl_logic_vector(15 downto 0);
        we              : in     vl_logic_vector(3 downto 0);
        adr             : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic
    );
end Regfile_16bit;
