module codewars.array;

import std.algorithm.mutation: reverse;

/// returns an assoc array of the occurances of T in T[]
public uint[T] occuranceMap(T)(T[] arr)
{
	uint[T] map; // unlike C++, al values in the map are default-initialized to 0
	foreach(elem; arr)
		map[elem]++; // increment by one
	return map;
}

/// reverses a string, useful, because extra steps are required for strings
public void reverse(ref string s)
{
	auto b = cast(ubyte[])s;
	b.reverse();
	s = cast(string)b;
}


