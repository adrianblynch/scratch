component {

	function x() access="remote" {
		return 123;
	}

	function getArrays(length) access="remote" {
		return arraySet([], 1, max(length, 1), true);
	}

}