<cfxml variable="x">
<songs>
	<song>
		<artist>Artist 1</artist>
		<title>Title 1</title>
	</song>
	<song>
		<artist>Artist 2</artist>
		<title>Title 2</title>
	</song>
</songs>
</cfxml>

<!---
	JSON has meant I haven't had to mess around with XML in CF/Railo in a long time - Let's play!
--->

<cfscript>

	dump(x);

	// Update node text
	x.songs.song[2].artist.xmlText &= " - updated";

	dump(x);

</cfscript>