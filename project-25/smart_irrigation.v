//============================================================
// Project : Smart Irrigation System
// File    : smart_irrigation.v
// Language: Verilog HDL
//============================================================

module smart_irrigation (
    input  wire [1:0] soil_moisture,
    input  wire       rain_sensor,

    output reg        water_pump,
    output reg        irrigation
);

    always @(*) begin

        // Default outputs
        water_pump = 1'b0;
        irrigation = 1'b0;

        // Dry soil and no rain
        if ((soil_moisture == 2'b00) && (rain_sensor == 1'b0)) begin
            water_pump = 1'b1;
            irrigation = 1'b1;
        end

        // Otherwise, irrigation is not required
        else begin
            water_pump = 1'b0;
            irrigation = 1'b0;
        end

    end

endmodule