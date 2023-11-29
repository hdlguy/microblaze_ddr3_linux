//
module top (
    input   logic       reset_n,
    input   logic       clkin,
    //
    input   logic       uart_rxd,
    output  logic       uart_txd,
    //
    output logic[13:0]  ddr3_addr,
    output logic[2:0]   ddr3_ba,
    output logic        ddr3_cas_n,
    output logic[0:0]   ddr3_ck_n,
    output logic[0:0]   ddr3_ck_p,
    output logic[0:0]   ddr3_cke,
    output logic[0:0]   ddr3_cs_n,
    output logic[1:0]   ddr3_dm,
    inout  logic[15:0]  ddr3_dq,
    inout  logic[1:0]   ddr3_dqs_n,
    inout  logic[1:0]   ddr3_dqs_p,
    output logic[0:0]   ddr3_odt,
    output logic        ddr3_ras_n,
    output logic        ddr3_reset_n,
    output logic        ddr3_we_n,
    //
    input   logic       eth_mii_col,
    input   logic       eth_mii_crs,
    output  logic       eth_mii_rst_n,
    input   logic       eth_mii_rx_clk,
    input   logic       eth_mii_rx_dv,
    input   logic       eth_mii_rx_er,
    input   logic[3:0]  eth_mii_rxd,
    input   logic       eth_mii_tx_clk,
    output  logic       eth_mii_tx_en,
    output  logic[3:0]  eth_mii_txd,
    //
    inout   logic       qspi_flash_io0_io,
    inout   logic       qspi_flash_io1_io,
    inout   logic       qspi_flash_io2_io,
    inout   logic       qspi_flash_io3_io,
    inout   logic       qspi_flash_sck_io,
    inout   logic       qspi_flash_ss_io   
);

    logic axi_aclk, axi_aresetn;
    
    logic qspi_flash_io0_i, qspi_flash_io0_o, qspi_flash_io0_t;
    logic qspi_flash_io1_i, qspi_flash_io1_o, qspi_flash_io1_t;
    logic qspi_flash_io2_i, qspi_flash_io2_o, qspi_flash_io2_t;
    logic qspi_flash_io3_i, qspi_flash_io3_o, qspi_flash_io3_t;
    logic qspi_flash_sck_i, qspi_flash_sck_o, qspi_flash_sck_t;
    logic qspi_flash_ss_i,  qspi_flash_ss_o,  qspi_flash_ss_t;
  
    system system_i (
        .reset_n                    (reset_n),
        .clkin                      (clkin),
        //
        .usb_uart_rxd               (uart_rxd),
        .usb_uart_txd               (uart_txd),
        //
        .ddr3_sdram_addr            (ddr3_addr),
        .ddr3_sdram_ba              (ddr3_ba),
        .ddr3_sdram_cas_n           (ddr3_cas_n),
        .ddr3_sdram_ck_n            (ddr3_ck_n),
        .ddr3_sdram_ck_p            (ddr3_ck_p),
        .ddr3_sdram_cke             (ddr3_cke),
        .ddr3_sdram_cs_n            (ddr3_cs_n),
        .ddr3_sdram_dm              (ddr3_dm),
        .ddr3_sdram_dq              (ddr3_dq),
        .ddr3_sdram_dqs_n           (ddr3_dqs_n),
        .ddr3_sdram_dqs_p           (ddr3_dqs_p),
        .ddr3_sdram_odt             (ddr3_odt),
        .ddr3_sdram_ras_n           (ddr3_ras_n),
        .ddr3_sdram_reset_n         (ddr3_reset_n),
        .ddr3_sdram_we_n            (ddr3_we_n),
        //
        .eth_mii_col                (eth_mii_col),
        .eth_mii_crs                (eth_mii_crs),
        .eth_mii_rst_n              (eth_mii_rst_n),
        .eth_mii_rx_clk             (eth_mii_rx_clk),
        .eth_mii_rx_dv              (eth_mii_rx_dv),
        .eth_mii_rx_er              (eth_mii_rx_er),
        .eth_mii_rxd                (eth_mii_rxd),
        .eth_mii_tx_clk             (eth_mii_tx_clk),
        .eth_mii_tx_en              (eth_mii_tx_en),
        .eth_mii_txd                (eth_mii_txd),
        //
        .qspi_flash_io0_i           (qspi_flash_io0_i),
        .qspi_flash_io0_o           (qspi_flash_io0_o),
        .qspi_flash_io0_t           (qspi_flash_io0_t),
        .qspi_flash_io1_i           (qspi_flash_io1_i),
        .qspi_flash_io1_o           (qspi_flash_io1_o),
        .qspi_flash_io1_t           (qspi_flash_io1_t),
        .qspi_flash_io2_i           (qspi_flash_io2_i),
        .qspi_flash_io2_o           (qspi_flash_io2_o),
        .qspi_flash_io2_t           (qspi_flash_io2_t),
        .qspi_flash_io3_i           (qspi_flash_io3_i),
        .qspi_flash_io3_o           (qspi_flash_io3_o),
        .qspi_flash_io3_t           (qspi_flash_io3_t),
        .qspi_flash_sck_i           (qspi_flash_sck_i),
        .qspi_flash_sck_o           (qspi_flash_sck_o),
        .qspi_flash_sck_t           (qspi_flash_sck_t),
        .qspi_flash_ss_i            (qspi_flash_ss_i),
        .qspi_flash_ss_o            (qspi_flash_ss_o),
        .qspi_flash_ss_t            (qspi_flash_ss_t)       
    );
    
    IOBUF qspi_flash_io0_iobuf (.I(qspi_flash_io0_o), .IO(qspi_flash_io0_io), .O(qspi_flash_io0_i), .T(qspi_flash_io0_t));
    IOBUF qspi_flash_io1_iobuf (.I(qspi_flash_io1_o), .IO(qspi_flash_io1_io), .O(qspi_flash_io1_i), .T(qspi_flash_io1_t));
    IOBUF qspi_flash_io2_iobuf (.I(qspi_flash_io2_o), .IO(qspi_flash_io2_io), .O(qspi_flash_io2_i), .T(qspi_flash_io2_t));
    IOBUF qspi_flash_io3_iobuf (.I(qspi_flash_io3_o), .IO(qspi_flash_io3_io), .O(qspi_flash_io3_i), .T(qspi_flash_io3_t));
    IOBUF qspi_flash_sck_iobuf (.I(qspi_flash_sck_o), .IO(qspi_flash_sck_io), .O(qspi_flash_sck_i), .T(qspi_flash_sck_t));
    IOBUF qspi_flash_ss_iobuf  (.I(qspi_flash_ss_o),  .IO(qspi_flash_ss_io),  .O(qspi_flash_ss_i),  .T(qspi_flash_ss_t));    
                
endmodule

