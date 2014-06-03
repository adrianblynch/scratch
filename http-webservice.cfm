<cfscript>

	// BUG: arraySet member function fails on array literals

	a = [];
	dump(a.set(1, 100, randRange(1, 100)));
	dump(a);
	abort;

	httpWebService = new HTTPWebService();
	data = httpWebService.doSomething();
	dump(data);

	u = "http://github:8888/scratch/HTTPWebService.cfc";
	ws = createObject("webservice", u & "?wsdl");
	data = ws.doSomething();
	dump(data);

	ws = createObject("http", u);
	data = ws.doSomething();
	dump(data);
</cfscript>