module codewars.shortcuts;

import std.stdio;
import std.traits;
import std.typecons;
import std.string;
import std.conv;
import std.string;
import std.array;
import std.algorithm;

/// call fn n times
void loop(T, F)(const T n, F fn)
    if ((isFunctionPointer!F || isDelegate!F)
       && Parameters!fn.length == 0
       && isIntegral!T)
{
	foreach(_; 0..n)
    {
    	fn();   
    }
}

/// read the line and return the T value
T dumbRead(T)()
    if (isScalarType!T)
{
    return readln.stripRight.to!T;
}

/// read T[], ignores the first element because it indicates the elementsi in the array, but it isn't needed
T dumbRead(T)()
    if (isArray!T)
{
    mixin( "return readln.stripRight().split(\" \").map!(a => a.to!( " ~ T.stringof[0..$-2] ~ " )).array;");
}

/// probably should never use but w/e
string dumbRead()
{
    return readln.stripRight;
}


private
{
    /// used for treadf
    string READPARAM(T...)()
    {
        string p = "readf!format(";
        static foreach(i; 0..T.length)
        {
            pragma(msg, "READPARAM: " ~ cast(char)(i + 48));
            if (i != 0)
                p ~= ",";
            p ~= "r[" ~ cast(char)(i+48) ~ "]";
        }
        p ~= ");";
        return p;
    }
}

/// read tuple from stdin
Tuple!(T) treadf(string format, T...)()
{
    Tuple!T r;
    mixin(READPARAM!T);
    return r;
}
