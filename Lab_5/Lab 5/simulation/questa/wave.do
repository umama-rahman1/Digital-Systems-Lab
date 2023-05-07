view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 20ns -dutycycle 50 -starttime 0ms -endtime 300ms sim:/demo_display/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ms -endtime 300ms sim:/demo_display/RESET 
wave create -driver freeze -pattern constant -value 1 -starttime 0ms -endtime 300ms sim:/demo_display/rstb 
WaveCollapseAll -1
wave clipboard restore
