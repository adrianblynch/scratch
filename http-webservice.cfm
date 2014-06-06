
<cfinvoke
	webservice="http://github:8888/scratch/HTTPWebService2.cfc?wsdl"
	method="x"
	returnVariable="xxx"
>

<cfdump var="#xxx#">

<cfabort>

<cfinvoke
	webservice="http://github:8888/scratch/HTTPWebService.cfc?wsdl"
	method="x"
>

<cfdump var="#result#">
<cfabort>

<cfscript>

	size = 5;
	u = "http://github:8888/scratch/HTTPWebService.cfc";

	httpWebService = new HTTPWebService();
	data = httpWebService.getArrays(size);
	dump(data);
	data = httpWebService.x();
	dump(data);

	http url="#u#?method=x&returnFormat=json";
	dump(cfhttp.fileContent);

	//invoke webservice="#u#?wsdl" method="x";

	ws = createObject("webservice", u & "?wsdl");
	data = ws.x();
	dump(data);

	ws = createObject("webservice", u & "?wsdl");
	data = ws.getArrays(length = size);
	dump(data);

	ws = createObject("http", u);
	data = ws.getArrays(size);
	dump(data);
</cfscript>