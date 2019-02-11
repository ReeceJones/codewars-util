import std.stdio;
import codewars.shortcuts;
import codewars.bitop;
import std.typecons;

alias Point = Tuple!(int, "x", int, "y");

void main()
{
	auto n = dumbRead!uint;
	loop(n, {
		auto p = cast(Point)treadf!("%d %d\n", int, int);
		writeln("x: ", p.x, "\ty: ", p.y);
	});
	writeln(dumbRead());
	auto numbers = dumbRead!(uint[]);
	foreach(num; numbers)
	{
		writeln(num.toBin);
	}
}
