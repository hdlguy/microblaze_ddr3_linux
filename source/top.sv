//
module top (
    input   logic       reset,
    input   logic       clkin,
    //
    input   logic       uart_rxd,
    output  logic       uart_txd
//    //
//    output logic [13:0] DDR3_addr,
//    output logic [2:0]  DDR3_ba,
//    output logic        DDR3_cas_n,
//    output logic [0:0]  DDR3_ck_n,
//    output logic [0:0]  DDR3_ck_p,
//    output logic [0:0]  DDR3_cke,
//    output logic [0:0]  DDR3_cs_n,
//    output logic [1:0]  DDR3_dm,
//    inout logic [15:0]  DDR3_dq,
//    inout logic [1:0]   DDR3_dqs_n,
//    inout logic [1:0]   DDR3_dqs_p,
//    output logic [0:0]  DDR3_odt,
//    output logic        DDR3_ras_n,
//    output logic        DDR3_reset_n,
//    output logic        DDR3_we_n
);

    logic axi_aclk, axi_aresetn;
  
    system system_i (
        .reset              (reset),
        .sys_clock          (clkin),
        //
        .usb_uart_rxd       (uart_rxd),
        .usb_uart_txd       (uart_txd)
//        //
//        .axi_aclk           (axi_aclk),
//        .axi_aresetn        (axi_aresetn),        
//        //
//        .DDR3_addr          (DDR3_addr),
//        .DDR3_ba            (DDR3_ba),
//        .DDR3_cas_n         (DDR3_cas_n),
//        .DDR3_ck_n          (DDR3_ck_n),
//        .DDR3_ck_p          (DDR3_ck_p),
//        .DDR3_cke           (DDR3_cke),
//        .DDR3_cs_n          (DDR3_cs_n),
//        .DDR3_dm            (DDR3_dm),
//        .DDR3_dq            (DDR3_dq),
//        .DDR3_dqs_n         (DDR3_dqs_n),
//        .DDR3_dqs_p         (DDR3_dqs_p),
//        .DDR3_odt           (DDR3_odt),
//        .DDR3_ras_n         (DDR3_ras_n),
//        .DDR3_reset_n       (DDR3_reset_n),
//        .DDR3_we_n          (DDR3_we_n)
    );
                
endmodule

