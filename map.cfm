<cfscript>

	letters = ["a", "b", "c"];

	dump(var = letters, label = "Letters");

	// Get ascii codes of letters array
	asciiCodes = letters.map(function(item, index, ary) {
		return asc(item);
	});

	dump(var = asciiCodes, label = "Letters mapped to ascii codes");

	echo("----");

	originalQuery = query(id: [1,2,3], name: ["Adrian Lynch", "Rebecca Davies", "Willy Yum-Yum"]);

	dump(var = originalQuery, label = "Original query");

	mappedQuery = originalQuery.map(function(row, index, qry) {
		return {name = row.name.listLast(" ") & " " & row.name.listFirst(" ")};
	});

	dump(var = mappedQuery, label = "Mapped query");

	echo("----");

</cfscript>