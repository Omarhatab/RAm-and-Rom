
module syncRam (clock, wr, , addr, data);
input clock, wr , [3:0] addr;
output [7:0] data;

reg [7:0] mem [0:15];


initial
begin
    $readmemb("rom.txt", Mem);
end

always @(posedge clock)
if (wr)
mem[addr] = data;
assign data = mem[addr] ;

endmodule