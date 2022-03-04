with Sorting;

procedure Main is

	toSort : Sorting.list := (2, 1, 6, 3, 0);
	alsoToSort : Sorting.list := (2, 1, 6, 3, 0);

begin

	Sorting.insertion(toSort);
	Sorting.selection(alsoToSort);

end Main;
