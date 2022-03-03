with Ada.Text_IO;
use Ada.Text_IO;

procedure Main is
	procedure swap (A, B : in out Integer) is
	begin
		A := A + B;
		B := A - B;
		A := A - B;
	end swap;

	A : Integer := 100;
	B : Integer := 43;
begin
	swap(A, B);
	Put_Line(Integer'Image(A));
end Main;
