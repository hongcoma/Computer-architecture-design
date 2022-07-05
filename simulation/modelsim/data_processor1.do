view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl -range 3 0 /data_processor1/input 
wave create -pattern none -portmode in -language vhdl -range 2 0 /data_processor1/alu_sel 
wave create -pattern none -portmode out -language vhdl -range 3 0 /data_processor1/data_chk 
wave create -pattern none -portmode out -language vhdl -range 3 0 /data_processor1/output 
wave create -pattern none -portmode in -language vhdl /data_processor1/ac_load 
wave create -pattern none -portmode in -language vhdl /data_processor1/clock 
wave create -pattern none -portmode in -language vhdl /data_processor1/mar_load 
wave create -pattern none -portmode in -language vhdl /data_processor1/ram_load 
wave create -pattern none -portmode in -language vhdl /data_processor1/input_sel 
wave create -pattern none -portmode in -language vhdl -range 2 0 /data_processor1/mar_in 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 3000ns Edit:/data_processor1/clock 
wave modify -driver freeze -pattern constant -value 0000 -range 3 0 -starttime 0ns -endtime 3000ns Edit:/data_processor1/input 
wave edit change_value -start 0ps -end 279040ps -value 0011 Edit:/data_processor1/input 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 3000ns Edit:/data_processor1/input_sel 
wave edit change_value -start 122880ps -end 294400ps -value 0000 Edit:/data_processor1/input 
wave edit change_value -start 102400ps -end 222720ps -value 0011 Edit:/data_processor1/input 
wave edit invert -start 115200ps -end 179200ps Edit:/data_processor1/input_sel 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 3000ns Edit:/data_processor1/ac_load 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 3000ns Edit:/data_processor1/ac_load 
wave modify -driver freeze -pattern constant -value 000 -range 2 0 -starttime 0ns -endtime 3000ns Edit:/data_processor1/alu_sel 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 3000ns Edit:/data_processor1/ram_load 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 3000ns Edit:/data_processor1/mar_load 
wave edit invert -start 217600ps -end 284160ps Edit:/data_processor1/mar_load 
wave modify -driver freeze -pattern constant -value 000 -range 2 0 -starttime 0ns -endtime 3000ns Edit:/data_processor1/mar_in 
wave edit change_value -start 0ps -end 299520ps -value 010 Edit:/data_processor1/mar_in 
wave edit change_value -start 491520ps -end 803840ps -value 001 Edit:/data_processor1/alu_sel 
WaveCollapseAll -1
wave clipboard restore
