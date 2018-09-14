module Control_unit(
  input wire [8:0] IR_in,
  input wire Run, clk, Reset,
  output reg Done,
  output reg [3:0] adr,
  output reg [3:0] we,
  output reg AddSubb);
  
  reg [8:0] IR;
  reg [1:0] Counter;
  
  
  always @(posedge clk)
  begin
  if (Reset) 
  begin
	Done<=0;
      adr<=0;
      we<=0;
      IR<=0;
      Counter<=0;
      AddSubb<=0;
	end
	else 
	begin
    case(Counter)
	  0:begin //на 0 такте выполняем запись новой команды
		  if (Run) 
			begin
				IR<=IR_in;
				case(IR_in[8:6])//выбираем количество тактов для команды, счетчик тактов декрементирующий
				3'b000,3'b001: Counter<=1; //0 - mv, 1 - mvi
				3'b010,3'b011: Counter<=3;//2 - add, 3 - subb
				default: Counter<=0;
				endcase
				Done<=0;// при записи новой команды опускаем флаг Done
			end
		  else Done<=1;//в конце выполнения команды выставляем флаг Done
		end
      1:begin
          if (IR[8:6]==3 || IR[8:6]==2)//запись результата сложения/вычитания в Rx из G
            begin
              adr<=8;
              we<=IR[5:3];
              Counter<=Counter-1;
            end
             else if (IR[8:6]==1)//запись в Rx со входа DIN; значение со входа DIN записывается на следующем такте
            begin
              adr<=9;
              we<=IR[5:3];
              Counter<=Counter-1;
            end
          else if (IR[8:6]==0)//копирование значения из Ry в Rx
            begin
              adr<=IR[2:0];
              we<=IR[5:3];
              Counter<=Counter-1;
            end
        end
      2:begin 
          if (IR[8:6]==3 || IR[8:6]==2)//выставление Ry на вход АЛУ
            begin
              adr<=IR[2:0];
              if (IR[8:6]==3) AddSubb<=1;
              else if (IR[8:6]==2) AddSubb<=0;
              we<=9;
              Counter<=Counter-1;
            end
        end
      3:begin
          if (IR[8:6]==3 || IR[8:6]==2)//запись Rx в аккумулятор
            begin
              adr<=IR[5:3];
              we<=8;
              Counter<=Counter-1;
            end
          end
      endcase
	 end
    end
    
endmodule