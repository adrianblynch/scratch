<cfscript>

	// Looping of collections, iterator interface, is there a nicer way to generate nest array from that

	data = [
		[
			[1, 2, 3], [4], [5, 6, 7]
		],[
			[8, 9], [0, 1], [2, 3, 4]
		]
	];

	dump(data);

	echo("<hr />");

	// Regular for loops - Kinda defeats the point as we can drill into the data in once place, inside the inner-most loop

	for (i = 1; i LTE data.len(); i++) {

		for (j = 1; j LTE data[i].len(); j++) {

			for (k = 1; k LTE data[i][j].len(); k++) {

				dump(data[i][j][k]);

			}

		}

	}

	echo("<hr />");

	// For-in loops - Looks cleaner - Will it work for

	for (a in data) {
		for (b in a) {
			for (c in b) {
				dump(c);
			}
		}
	}

</cfscript>