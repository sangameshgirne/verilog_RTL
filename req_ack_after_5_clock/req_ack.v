module edge_detect(input req,clk,rst, output reg ack);
reg [2:0]count;
reg pos_edge,req_d1,flag;
always@(posedge clk)
begin
if(rst)
   begin
     ack<=0;
     flag<=0;
     count<=0;
   end
else 
   begin
      ack<=0;
      if(pos_edge)
         begin
      	   count=count+1;
           flag<=1;
         end

      else if(flag)
         begin
            ack<=0;
            if(count<5) 
               count<=count+1;
            else
               begin 
               count<=0;
               flag<=0; 
               ack<=1;
               end
         end
   end 


end
//posedge detector logic
always@*
begin
pos_edge=0;
if(req&~req_d1)
pos_edge=1;
end

always@(posedge clk)
begin
if(rst)
req_d1<=0;
else
req_d1<=req;
end
endmodule
