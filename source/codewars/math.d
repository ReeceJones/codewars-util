module codewars.math;


/// returns true if an unsigned long is a prime number
bool isPrime(ulong n)
{
    if (n <= 1) return false;
    foreach(d; 2..n) 
        if (n % d == 0)
            return false;
    return true;
}
