with Ada.Text_IO;
use Ada.Text_IO;

procedure Main is
	type Index is range 1..3;
	Arr : array (Index) of Integer := (0, 2, 10);
	output : Integer;
begin
	for i in Index loop
		output := Arr (i);
		Put_Line(Integer'Image(output));
	end loop;
   null;
end Main;
