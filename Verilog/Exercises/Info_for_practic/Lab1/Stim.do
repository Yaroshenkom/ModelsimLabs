force clr 1 0ns, 0 50ns, 1 400ns, 0 450ns;
force clk 1 0ns, 0 100ns -repeat 250ns;
force ina 10#0 0ns, 10#64 300ns, 10#60 600ns, 10#56 900ns, 10#52 1200ns, 10#48 1500ns, 10#44 1800ns, 10#40 2100ns, 10#36 2400ns, 10#32 2700ns, 10#28 3000ns, 10#24 3300ns, 10#20 3600ns, 10#16 3900ns, 10#12 4200ns, 10#8 4500ns, 10#4 4800ns;
force inb 10#0 0ns, 10#2 600ns, 10#4 1200ns, 10#6 1800ns, 10#8 2400ns, 10#10 3000ns, 10#12 3600ns, 10#14 4200ns, 10#16 4800ns;
run @ 5000ns

