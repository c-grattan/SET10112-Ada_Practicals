package Sorting is

	type list is array (Positive range <>) of Integer;

	--Insertion helpers
	procedure putList(arr: list);
	procedure swap(arr : in out list; A : integer; B : Integer);

	procedure insertion(arr : in out list);

	--Selection helpers
	function minimumPos(arr : list) return Integer;

	procedure selection(arr : in out list);

end Sorting;
