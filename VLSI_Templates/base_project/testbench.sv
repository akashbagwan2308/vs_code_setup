`timescale 1ns/1ps
`include "uvm_macros.svh"
import uvm_pkg::*;

module test;

  initial begin
    $display("Simulation Started");
    #10;
    $finish;
  end

endmodule