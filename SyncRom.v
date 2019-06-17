
module syncRom(clock ,addr, outData);
input clock 
input [3:0] addr;
output reg [7:0] outData;

reg [7:0] Mem [15:0];

initial
begin
    $readmemb("rom.txt", Mem);
end

always@(posedge clock)
begin
    outData = Mem[addr];
end
endmodule