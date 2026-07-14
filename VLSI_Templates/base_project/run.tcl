set UVM_HOME C:/UVM/1.2/src

puts "Compiling Design..."
eval exec xvlog design.v

puts "Compiling Testbench..."
eval exec xvlog -sv -L uvm -i $UVM_HOME testbench.sv $UVM_HOME/uvm_pkg.sv

puts "Elaborating..."
eval exec xelab work.testbench -s simv

puts "Running Simulation..."
eval exec xsim simv -runall