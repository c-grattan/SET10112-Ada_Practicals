with ada.Text_IO;
use ada.Text_IO;

package body Sorting is

	--Helper function, outputs a list
	procedure putList(arr: list) is
	begin
		for i in arr'Range loop
			Put(Integer'Image(arr(i)));
		end loop;
		Put_Line("");
	end putList;

	--Swaps two variables, for use in insertion sort
	procedure swap(arr : in out list; A : Integer; B : Integer) is
	begin
		if A /= B then
			arr(A) := arr(A) + arr(B);
			arr(B) := arr(A) - arr(B);
			arr(A) := arr(A) - arr(B);
		end if;
	end swap;

	--Insertion sort, outputs progress to validate algorithm
	procedure insertion(arr: in out list) is
		position : Integer; --Represents the position of the two values being compared. Changes throughout each loop, so must be separate from i
	begin
		Put_Line("Insertion sort");
		--Main insertion sort algorithm
		for i in arr'Range loop
			position := i;
			while position > 1 loop
				if arr(position) < arr(position - 1) then
					swap(arr, position, position - 1);
				end if;
				position := position - 1;
			end loop;
			--Output progress after each sorted integer
			putList(arr);
		end loop;
	end insertion;

	--Helper function for selection sort
 --I despise GNATs random indentation
	function minimumPos(arr : list) return Integer is
		minInt : Integer := arr(arr'First);
		retPos : Integer := arr'First;
	begin
		for i in arr'Range loop
			if arr(i) < minInt then
				minInt := arr(i);
				retPos := i;
			end if;
		end loop;
		return retPos;
	end minimumPos;

	--Selection sort
	procedure selection(arr : in out list) is
	begin
		Put_Line("Selection sort");
		for i in arr'Range loop
			putList(arr);
			swap(arr, i, minimumPos(arr(i..arr'Length)));
		end loop;
	end selection;

end Sorting;
