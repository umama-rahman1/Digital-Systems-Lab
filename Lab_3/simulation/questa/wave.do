view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns sim:/jk_flipflop/CLRN 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns sim:/jk_flipflop/PRN 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/jk_flipflop/CLK 
wave create -driver freeze -pattern random -initialvalue 0 -period 50ns -random_type Uniform -seed 5 -starttime 0ns -endtime 1000ns sim:/jk_flipflop/J 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/jk_flipflop/J 
wave create -driver freeze -pattern clock -initialvalue 1 -period 300ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/jk_flipflop/K 
WaveCollapseAll -1
wave clipboard restore
