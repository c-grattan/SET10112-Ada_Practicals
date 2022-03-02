with Ada.Text_IO;
use Ada.Text_IO;

procedure Main is

	I : Integer := 1;
	loopAmount : Integer := 10;

begin
	-- For
	for i in 1 .. loopAmount loop
		Put_Line("i: " & Integer'Image(i));
	end loop;

	--Blank
	loop
		Put_Line("I: " & Integer'Image(I));

		exit when I = loopAmount;

		I := I + 1;
	end loop;

	--While
	I := 0;
	while I < loopAmount loop
		Put_Line(Integer'Image(I));
		I := I + 1;
	end loop;
   null;
end Main;
