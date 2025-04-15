
module digital_alarm_clock(
    input wire clk,         // Clock input
    input wire rst,         // Reset input
    input wire set_time,    // Set the time button
    input wire set_alarm,   // Set the alarm time button
    input wire alarm_on,    // Enable/disable alarm

    output wire [5:0] hours,   // Display hours (in BCD)
    output wire [6:0] minutes, // Display minutes (in BCD)
    output wire alarm_triggered // Alarm triggered signal
);

reg [5:0] current_hours;   // Current hours
reg [6:0] current_minutes; // Current minutes
reg [5:0] alarm_hours;     // Alarm hours
reg [6:0] alarm_minutes;   // Alarm minutes

reg alarm_active; // Alarm active flag

always @(posedge clk or posedge rst) begin
    if (rst) begin
        current_hours <= 6'b000000;
        current_minutes <= 7'b0000000;
        alarm_hours <= 6'b000000;
        alarm_minutes <= 7'b0000000;
        alarm_active <= 1'b0;
    end else begin
        if (set_time) begin
            // Implement logic to set the time (e.g., increment hours and minutes)
        end
        if (set_alarm) begin
            // Implement logic to set the alarm time
        end
        if (alarm_on) begin
            alarm_active <= 1'b1;
        end else begin
            alarm_active <= 1'b0;
        end

        // Implement clock logic to increment current time (hours and minutes)
        // Compare current time with the alarm time and trigger the alarm if they match
    end
end

assign hours = current_hours;
assign minutes = current_minutes;
assign alarm_triggered = (current_hours == alarm_hours) && (current_minutes == alarm_minutes);

endmodule

