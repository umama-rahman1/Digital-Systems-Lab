view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 20ps -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/tb_counter26/clk 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns sim:/tb_counter26/clrb 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns sim:/tb_counter26/enb 
wave create -driver freeze -pattern clock -initialvalue 0 -period 20ps -dutycycle 50 -starttime 0ms -endtime 1ms sim:/tb_counter26/clk 
wave create -driver freeze -pattern constant -value 1 -starttime 0ms -endtime 1ms sim:/tb_counter26/clrb 
wave create -driver freeze -pattern constant -value 1 -starttime 0ms -endtime 1ms sim:/tb_counter26/enb 
WaveCollapseAll -1
wave clipboard restore
