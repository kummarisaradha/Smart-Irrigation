//============================================================
// Testbench : Smart Irrigation System
// File      : smart_irrigation_tb.v
//============================================================

`timescale 1ns/1ps

module smart_irrigation_tb;

    reg [1:0] soil_moisture;
    reg       rain_sensor;

    wire water_pump;
    wire irrigation;

    // Instantiate the Design Under Test
    smart_irrigation DUT (
        .soil_moisture(soil_moisture),
        .rain_sensor(rain_sensor),
        .water_pump(water_pump),
        .irrigation(irrigation)
    );

    initial begin

        // Generate waveform
        $dumpfile("smart_irrigation.vcd");
        $dumpvars(0, smart_irrigation_tb);

        $display("==================================================");
        $display("       SMART IRRIGATION SYSTEM SIMULATION");
        $display("==================================================");
        $display("Time | Soil | Rain | Pump | Irrigation");
        $display("--------------------------------------------------");

        // Test 1: Dry soil, no rain
        soil_moisture = 2'b00;
        rain_sensor = 1'b0;
        #10;

        $display("%4t |  %b  |  %b   |  %b   |     %b",
                 $time, soil_moisture, rain_sensor,
                 water_pump, irrigation);

        // Test 2: Moderate soil, no rain
        soil_moisture = 2'b01;
        rain_sensor = 1'b0;
        #10;

        $display("%4t |  %b  |  %b   |  %b   |     %b",
                 $time, soil_moisture, rain_sensor,
                 water_pump, irrigation);

        // Test 3: Wet soil, no rain
        soil_moisture = 2'b10;
        rain_sensor = 1'b0;
        #10;

        $display("%4t |  %b  |  %b   |  %b   |     %b",
                 $time, soil_moisture, rain_sensor,
                 water_pump, irrigation);

        // Test 4: Very wet soil, rain detected
        soil_moisture = 2'b11;
        rain_sensor = 1'b1;
        #10;

        $display("%4t |  %b  |  %b   |  %b   |     %b",
                 $time, soil_moisture, rain_sensor,
                 water_pump, irrigation);

        // Test 5: Dry soil, rain detected
        soil_moisture = 2'b00;
        rain_sensor = 1'b1;
        #10;

        $display("%4t |  %b  |  %b   |  %b   |     %b",
                 $time, soil_moisture, rain_sensor,
                 water_pump, irrigation);

        $display("==================================================");
        $display("          SIMULATION COMPLETED");
        $display("==================================================");

        $finish;
    end

endmodule