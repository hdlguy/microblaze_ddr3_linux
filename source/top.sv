//
module top (
    input   logic       reset_n,
    input   logic       clkin,
    //
    input   logic       uart_rxd,
    output  logic       uart_txd
//    //
//    output logic[13:0]  ddr3_addr,
//    output logic[2:0]   ddr3_ba,
//    output logic        ddr3_cas_n,
//    output logic[0:0]   ddr3_ck_n,
//    output logic[0:0]   ddr3_ck_p,
//    output logic[0:0]   ddr3_cke,
//    output logic[0:0]   ddr3_cs_n,
//    output logic[1:0]   ddr3_dm,
//    inout  logic[15:0]  ddr3_dq,
//    inout  logic[1:0]   ddr3_dqs_n,
//    inout  logic[1:0]   ddr3_dqs_p,
//    output logic[0:0]   ddr3_odt,
//    output logic        ddr3_ras_n,
//    output logic        ddr3_reset_n,
//    output logic        ddr3_we_n
);

    logic axi_aclk, axi_aresetn;
  
    system system_i (
        .reset_n            (reset_n),
        .clkin              (clkin),
        //
        .usb_uart_rxd       (uart_rxd),
        .usb_uart_txd       (uart_txd)
//        //
//        .ddr3_addr          (ddr3_addr),
//        .ddr3_ba            (ddr3_ba),
//        .ddr3_cas_n         (ddr3_cas_n),
//        .ddr3_ck_n          (ddr3_ck_n),
//        .ddr3_ck_p          (ddr3_ck_p),
//        .ddr3_cke           (ddr3_cke),
//        .ddr3_cs_n          (ddr3_cs_n),
//        .ddr3_dm            (ddr3_dm),
//        .ddr3_dq            (ddr3_dq),
//        .ddr3_dqs_n         (ddr3_dqs_n),
//        .ddr3_dqs_p         (ddr3_dqs_p),
//        .ddr3_odt           (ddr3_odt),
//        .ddr3_ras_n         (ddr3_ras_n),
//        .ddr3_reset_n       (ddr3_reset_n),
//        .ddr3_we_n          (ddr3_we_n)
    );
                
endmodule

