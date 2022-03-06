module FSM_lock (input clk , input reset,  input din , output reg pattern_detect);
reg [1:0] present_state , next_state;
always @ (posedge clk,  posedge reset)
begin
	if(reset)
		present_state <= 2'b00;
	else
		present_state <= next_state;
end


always @ (*)
begin
	case(present_state)

		2'b00 : begin
				if(din)
					next_state = 2'b01;
					pattern_detect = 1'b0;
			end

		2'b01 : begin
				if(!din)
					next_state = 2'b10;
					pattern_detect = 1'b0;
			end

		2'b10 : begin
				if(din) begin
					next_state = 2'b11;
					pattern_detect = 1'b0;
					end
					
				else	begin
					next_state = 2'b00;
					pattern_detect = 1'b0;
					end
					
			end 

		2'b11 : begin
				next_state = 2'b00;
				pattern_detect = 1'b1;

			end

		default : begin
				next_state = present_state;
				pattern_detect = 1'b0;
			  end
	endcase

				
end


endmodule
