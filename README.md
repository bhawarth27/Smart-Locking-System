# Mixed Signal Circuit Design and Simulation Marathon
![image](https://user-images.githubusercontent.com/35188692/156909622-17d9ab3c-6cd5-4177-aa25-a169bdc5712b.png)

# Smart Locking System 
- [Circuit Details](#circuit-details)
- [Reference Circuit Diagram](#reference-circuit-diagram)
- [Reference Waveform](#reference-waveform)
- [Software Used](#software-used)
  * [eSim](#esim)
  * [NgSpice](#ngspice)
  * [Makerchip](#makerchip)
  * [Verilator](#verilator)
- [Circuit Diagram in eSim](#circuit-diagram-in-esim)
- [Verilog Code](#verilog-code)
- [Makerchip](#makerchip-1)
- [Makerchip Plots](#makerchip-plots)
- [Netlists](#netlists)
- [NgSpice Plots](#ngspice-plots)
- [Steps to run generate NgVeri Model](#steps-to-run-generate-ngveri-model)
- [Steps to run this project](#steps-to-run-this-project)
- [Acknowlegdements](#acknowlegdements)
- [References](#references)


## Circuit Details
The image below shows the design of a smart lock. The design comprises of both analog as well as digital circuits. Finite state machine (FSM) is being used as a heart of this design. FSM here will act as  sequence detector and will have a pre-loadesd pattern inside it for its output to go high. Only when the user gives correct input to our smart locking system (which matches with the preloaded sequence in the FSM) the lock will open otherwise it will remain closed. There will be a clock generating circuitry (analog in nature) which will provide clock to the FSM. The output of the FSM can be sceen as the LED glowing at the output  side. The mixed-mode simulation of the proposed system will also be done and analyzed using eSim (a free/libre and open source EDA tool for circuit design, simulation, analysis and PCB design. It is an integrated tool built using free/libre and open source software such as KiCad, Ngspice, Verilator, makerchip-app, sandpiper-saas and GHDL. 

## Reference Circuit Diagram
![image](https://user-images.githubusercontent.com/35188692/156909119-42c6b19e-c5c4-4cdf-a160-96c981689fbc.png)

## Reference Waveform
![image](https://user-images.githubusercontent.com/35188692/156909127-a8cfe226-6b55-4f4e-8b93-0af885a48b39.png)


## Software Used
### eSim
It is an Open Source EDA developed by FOSSEE, IIT Bombay. It is used for electronic circuit simulation. It is made by the combination of two software namely NgSpice and KiCAD.
</br>
For more details refer:
</br>
https://esim.fossee.in/home
### NgSpice
It is an Open Source Software for Spice Simulations. For more details refer:
</br>
http://ngspice.sourceforge.net/docs.html
### Makerchip
It is an Online Web Browser IDE for Verilog/System-verilog/TL-Verilog Simulation. Refer
</br> https://www.makerchip.com/
### Verilator
It is a tool which converts Verilog code to C++ objects. Refer:
https://www.veripool.org/verilator/

## Circuit Diagram in eSim
The following is the schematic in eSim:
![image](https://user-images.githubusercontent.com/35188692/156909262-d9fb96ac-8840-48b6-a33a-24f8a2782dd0.png)

## Verilog Code
```
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
```
## Makerchip
```
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
		always @ (posedge clk) assign din = $random();
		FSM_lock FSM_lock(.clk(clk), .reset(reset), .din(din), .pattern_detect(pattern_detect));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule

```
## Makerchip Plots
![image](https://user-images.githubusercontent.com/35188692/156909444-e6fe1854-3b02-4fc2-a103-9643e4bcee74.png)


## Netlists
![image](https://user-images.githubusercontent.com/35188692/156909521-ac4ea8c3-8e84-4b1e-8576-277fd17400da.png)

## NgSpice Plots
![image](https://user-images.githubusercontent.com/35188692/156909543-ed29b410-1d0f-4734-bac7-deb339cda85f.png)

## Steps to run generate NgVeri Model
1. Open eSim
2. Run NgVeri-Makerchip 
3. Add top level verilog file in Makerchip Tab
4. Click on NgVeri tab
5. Add dependency files
6. Click on Run Verilog to NgSpice Converter
7. Debug if any errors
8. Model created successfully
## Steps to run this project
1. Open a new terminal
2. Clone this project using the following command:</br>
```git clone https://github.com/bhawarth27/Smart-Locking-System.git ```</br>
3. Change directory:</br>
```cd eSim_project_files/Smart-Locking-System```</br>
4. Run ngspice:</br>
```ngspice Smart-Locking-System.cir.out```</br>
5. To run the project in eSim:

  - Run eSim</br>
  - Load the project</br>
  - Open eeSchema</br>
## Acknowlegdements
1. FOSSEE, IIT Bombay
2. Steve Hoover, Founder, Redwood EDA
3. Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd. - kunalpghosh@gmail.com
4. Sumanto Kar, eSim Team, FOSSEE

## References
[1] https://www.circuitstoday.com/simple-electronic-combination-lock-using-ic-ls-7220
