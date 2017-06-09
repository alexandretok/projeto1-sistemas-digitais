view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 10ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/main/CLK_50M 
wave modify -driver freeze -pattern clock -initialvalue U -period 50ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/main/CLK_50M 
wave create -driver freeze -pattern clock -initialvalue 1 -period 50ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/main/IN_BOTAO 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 200ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/main/IN_BOTAO 
WaveCollapseAll -1
wave clipboard restore
