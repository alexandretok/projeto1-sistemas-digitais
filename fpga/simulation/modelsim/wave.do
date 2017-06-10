view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ps -endtime 100ps sim:/contador_180/IN_BOTAO 
wave modify -driver freeze -pattern constant -value 1 -starttime 100ps -endtime 500ps Edit:/contador_180/IN_BOTAO 
wave modify -driver freeze -pattern constant -value 0 -starttime 500ps -endtime 600ps Edit:/contador_180/IN_BOTAO 
wave modify -driver freeze -pattern constant -value 1 -starttime 600ps -endtime 1000ps Edit:/contador_180/IN_BOTAO 
wave create -driver freeze -pattern clock -initialvalue U -period 20ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/contador_180/CLK_1K 
wave modify -driver freeze -pattern clock -initialvalue U -period 10ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/contador_180/CLK_1K 
wave modify -driver freeze -pattern constant -value 1 -starttime 500ps -endtime 600ps Edit:/contador_180/IN_BOTAO 
WaveCollapseAll -1
wave clipboard restore
