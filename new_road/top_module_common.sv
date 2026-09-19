packet_generator u_pkt (
        .clk        (clk),
        .rst        (rst),
        .request    (tx_request),
        .event_id   (tx_event),
        .vehicle_id (VEHICLE_ID),
        .uart_start (uart_start),
        .uart_data  (uart_data),
        .uart_busy  (uart_busy),
        .uart_done  (uart_done),
        .busy       (packet_busy),
        .packet_done(packet_done),
        .packet_out (tx_packet)  // Fully supported by the updated packet_generator
    );
