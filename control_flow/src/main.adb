with ADA.Text_IO;
use ADA.Text_IO;

with ADA.Integer_Text_IO;
use ADA.Integer_Text_IO;

procedure Main is
	N : Integer;
begin
	Put("Enter an integer value: ");
	Get(N);
	Put(N);
	if N > 0 then
		Put(" is a positive integer");
	else if N = 0 then
		Put(" is zero");
	else
		Put(" is a negative integer");
	end if;
	end if;
   null;
end Main;
