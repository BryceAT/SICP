Prove that Fib(n) is the closest integer to φn/5⎯⎯√, where φ=(1+5⎯⎯√)/2. Hint: Let ψ=(1−5⎯⎯√)/2. Use induction and the definition of the Fibonacci numbers (see 1.2.2) to prove that Fib(n)=(φn−ψn)/5⎯⎯√.

Linear Difference Equation:

f(0) = 0
f(1) = 1
f(n) = f(n-1) + f(n-2) for n >= 2

Note that the colection of f that satify the above equation (not initial conditions) form a 2 dimentional vector space, since if f1 and f2 both satisfy the equation then so does f3 = a*f1 + b*f2 where a and b are real numbers.

guess that f(n) = \alpha^n for some real number alpha.

Then \alpha^n = \alpha^(n-1) + \alpha^(n-2).

\alpha satifies this equation if and only if \alpha is a root of the equation
x^2 - x -1.  These roots are \theta and \phi

so, Fib(n) = a\theta^n + b\phi^n for some real numbers a and b.
we use f(0) = 0 and f(1) = 1 to solve for a and b to find the expression given in the prompt.

Now we know that Fib(n) is an integer for all n because integers are closed under addition.  Since \phi^n/\sq{5} < 0.5 for n >= 2 we get Fib(n) is the integer closest to  \theta^n/\sq{5}.
