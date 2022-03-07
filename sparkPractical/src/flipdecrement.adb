package body flipDecrement with SPARK_MODE is

	procedure flip(num : in out binary) is
	begin
		if(num = 0) then
			num := 1;
		else
				num := 0;
			end if;
	end;

	procedure increment(num : in out decary) is
	begin
		num := num + 1;
	end;


end flipDecrement;
