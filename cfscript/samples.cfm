
<!--- Simple convertion --->

<cfparam name="xxx" default="yyy">

<cfscript>
	param name="xxx" default="yyy";
</cfscript>

<!--- Tag body convertion --->

<cfhttp url="http://www.google.com/">
	<cfhttpparam type="url" name="q" value="railo">
</cfhttp>

<cfscript>

	http url="http://www.google.com/" {
		httpparam type="url" name="q" value="railo";
	}

</cfscript>

<!--- Function/Component equivalent --->

<cfscript>

	req = new http();
	req.setMethod("get");
	req.setUrl("http://www.google.com/");
	req.addParam(type = "url", name = "q", value = "railo");

	res = req.send().getPrefix(); // Why getPrefix? Who knows!

</cfscript>

<!--- Looping --->

<cfscript>

	collection = [2, 4, 6];

	//dump(collection);

	// General looping

	collection.each(function(item, index, collection) {
		//dump(item);
		//dump(index);
		//dump(collection);
	});

	// Mapping and filtering

	doubledCollection = collection.map(function(item, index, collection) {
		//dump(item);
		//dump(index);
		//dump(collection);
		return item * 2;
	});

	//dump(doubledCollection);

	// Filter
	smallCollection = collection.filter(function(item, index, collection) {
		return item LT 4;
	});

	//dump(smallCollection);

	// Queries

	railoPeople = Query("firstname" = ["Mark", "Gert"], "lastname" = ["Drew", "Franz"]);

	railoPeople.each(function(row, currentRow, q) {

		// Is the query touched via the row structure?
		//row.firstname &= " - sacked!";

		//dump(row);
		//dump(currentRow);
		//dump(q);

	});

	//dump(railoPeople);

	// Note that the parameters are optional:
	// function(item, index, collection)
	// function(item, index)
	// function(item)
	// function()

</cfscript>