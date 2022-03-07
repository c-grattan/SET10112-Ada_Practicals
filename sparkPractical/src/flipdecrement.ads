package flipDecrement with SPARK_MODE is

	type binary is range 0..1;

	procedure flip(num : in out binary) with
	  post => num'Old /= num;

	type decary is range 0..10;

	procedure increment(num : in out decary) with
	  pre => num < decary'Last,
	  post => num = num'Old + 1;

end flipDecrement;
