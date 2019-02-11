module codewars.bitop;

import std.range;
import codewars.array;
import std.math;

import std.stdio;

/// how the machine sees the number
string toFullBin(T)(T t)
{
    string bin;
    size_t sz = T.sizeof * 8;
    foreach(i; sz.iota)
        bin ~= ((t>>i) & 1) ? "1" : "0";
    bin.reverse();
    return bin;
}

/// Binary string, but only the significant bits
string toBin(T)(T t)
{
    string bin;
    size_t sz = T.sizeof * 8;
    foreach(i; sz.iota)
        bin ~= ( t & (1 << i) ) ? "1" : "0";
    bin = bin[0..bitDepth(t)];
    bin.reverse();
    return bin;
}


/// returns true if a number is a power of 2
bool isPow2(T)(T t)
{
    uint n;
    size_t sz = T.sizeof * 8;
    foreach(i; sz.iota)
        n += ((t >> i) & 1) ? 1 : 0;
    return n == 1;
}

/// returns the number of significant bits
size_t bitDepth(T)(T t)
{
    return cast(size_t)log2(t) + 1;
}
