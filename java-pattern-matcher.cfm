<cfscript>

	str = "Hello Hello";
	pattern = createObject("java", "java.util.regex.Pattern").compile("Hello");
	matcher = pattern.matcher(str);
	ranges = [];

	while (matcher.find()) {
		dump("Found!");
		ranges.append({start = matcher.start(), end = matcher.end()});
	}

	dump(ranges);

</cfscript>