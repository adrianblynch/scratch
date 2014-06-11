<cfscript>

	a = [];

	for (i = 1; i LT 100000; i++) {
		a.append(i);
	}

	precision = "nano"

	start = getTickCount(precision);

	a.each(function(num, i, a) parallel="false" {
		a[i] = num * 10;
	});

	end = getTickCount(precision);

	echo("Took #end - start# #precision# seconds!");

</cfscript>