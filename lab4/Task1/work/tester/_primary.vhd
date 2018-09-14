library verilog;
use verilog.vl_types.all;
entity tester is
    generic(
        period          : integer := 20
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of period : constant is 1;
end tester;
