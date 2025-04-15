`timescale 1ns/1ps

module tb_digital_alarm_clock;

    reg clk;             // Clock signal
    reg rst;             // Reset signal
    reg set_time;        // Set the time button
    reg set_alarm;       // Set the alarm time button
    reg alarm_on;        // Enable/disable alarm
    wire [5:0] hours;    // Display hours (in BCD)
    wire [6:0] minutes;  // Display minutes (in BCD)
    wire alarm_triggered; // Alarm triggered signal

    // Instantiate the digital alarm clock module
    digital_alarm_clock dac (
        .clk(clk),
        .rst(rst),
        .set_time(set_time),
        .set_alarm(set_alarm),
        .alarm_on(alarm_on),
        .hours(hours),
        .minutes(minutes),
        .alarm_triggered(alarm_triggered)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;
    end

    // Initial values
    initial begin
        $dumpfile("dump.vcd"); // Specify the VCD file
        $dumpvars(0, tb_digital_alarm_clock); // Dump all variables
        clk = 0;
        rst = 1;
        set_time = 0;
        set_alarm = 0;
        alarm_on = 0;

        // Reset the digital alarm clock
        #10 rst = 0;

        // Simulate setting the time and alarm
        #20 set_time = 1;
        #10 set_time = 0;
        #10 set_time = 1;
        #10 set_time = 0;
        #10 set_alarm = 1;
        #10 set_alarm = 0;

        // Simulate enabling the alarm
        #10 alarm_on = 1;

        // Simulate clock ticks to advance time
        // Add more clock ticks for more comprehensive testing
        #50;
        // ...

        // Disable the alarm
        #10 alarm_on = 0;

        // Simulate alarm triggering
        // Set alarm time to the current time for testing
        #10 set_alarm = 1;
        #10 set_alarm = 0;

        // Finish simulation
        $finish;
    end

endmodule
