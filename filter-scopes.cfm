<cfscript>

	page = "He ";

	function doFilter() localmode="modern" {

		outer = 1;

		a = [0,1,2,3];

		a = a.filter(function(item) {
			inner = 101;
			outer++;
			echo(page);
			return item GT 0;
		});

		dump(page);
		dump(inner);
		dump(outer);
		dump(a);

	}

	doFilter();


</cfscript>