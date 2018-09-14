library verilog;
use verilog.vl_types.all;
entity test is
    generic(
        period          : integer := 20;
        seed            : integer := 11
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of period : constant is 1;
    attribute mti_svvh_generic_type of seed : constant is 1;
end test;
