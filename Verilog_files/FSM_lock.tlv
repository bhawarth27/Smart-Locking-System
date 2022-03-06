\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/  /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/  /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/ 

//Your Verilog/System Verilog Code Starts Here:
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


//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  din;//input
		logic  pattern_detect;//output
//The $random() can be replaced if user wants to assign values
		always @(posedge clk) assign din = $random();
		FSM_lock FSM_lock(.clk(clk), .reset(reset), .din(din), .pattern_detect(pattern_detect));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule

