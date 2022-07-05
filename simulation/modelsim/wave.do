view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /lab_08_dp/clk 
wave create -pattern none -portmode in -language vhdl /lab_08_dp/load 
wave create -pattern none -portmode in -language vhdl /lab_08_dp/clear 
wave create -pattern none -portmode in -language vhdl /lab_08_dp/out_sel 
wave create -pattern none -portmode out -language vhdl /lab_08_dp/iNOT10 
wave create -pattern none -portmode out -language vhdl -range 3 0 /lab_08_dp/dp_out 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 2000ns Edit:/lab_08_dp/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 2000ns Edit:/lab_08_dp/load 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns Edit:/lab_08_dp/clear 
wave edit invert -start 0ps -end 20876ps Edit:/lab_08_dp/clear 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 2000ns Edit:/lab_08_dp/out_sel 
WaveCollapseAll -1
wave clipboard restore
