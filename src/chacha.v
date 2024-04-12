/*
 * Copyright (c) 2024 Andrew Dona-Couch
 * SPDX-License-Identifier: Apache-2.0
 */

`define default_netname none

module chacha (
    input  wire       clk,      // clock
    input  wire       rst_n,    // reset_n - low to reset
    input  wire       wr_key,   // Set high to start writing key material
    input  wire       wr_nnc,   // Set high to start writing nonce value
    input  wire       wr_ctr,   // Set high to start writing counter value
    input  wire       hold,     // Set high to pause calculation
    output wire       blk_ready,// Goes high when the next block is available
    input  wire       rd_blk,   // Set high to start reading block data
    input  wire [7:0] data_in,  // Key, nonce, and counter input bus
    output wire [7:0] data_out  // Block data output bus
);

  assign blk_ready = 0;
  assign data_out = 0;

endmodule
