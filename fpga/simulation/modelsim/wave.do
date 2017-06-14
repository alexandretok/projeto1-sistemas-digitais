view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 100ps sim:/contador_180/IN_BOTAO 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ps -endtime 200ps Edit:/contador_180/IN_BOTAO 
wave modify -driver freeze -pattern constant -value 0 -starttime 200ps -endtime 1000ps Edit:/contador_180/IN_BOTAO 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ps -endtime 1000ps Edit:/contador_180/IN_BOTAO 
wave create -driver freeze -pattern clock -initialvalue U -period 4ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/contador_180/CLK_1K 
wave modify -driver freeze -pattern clock -initialvalue U -period 8ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/contador_180/CLK_1K 
wave modify -driver freeze -pattern clock -initialvalue U -period 5ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/contador_180/CLK_1K 
wave modify -driver freeze -pattern clock -initialvalue U -period 2ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/contador_180/CLK_1K 
wave modify -driver freeze -pattern clock -initialvalue U -period 5ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/contador_180/CLK_1K 
wave modify -driver freeze -pattern constant -value 1 -starttime 120ps -endtime 1000ps Edit:/contador_180/IN_BOTAO 
WaveCollapseAll -1
wave clipboard restore
