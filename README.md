# Find_critical_point_to_function
Analytisk og numerisk utregning av funksjon 

Subject:
Mathematics 1000

The task is to show analytical and numerical calculation of the maximum point of a given function: f(x) = exp(-x/4)*atan(x). 
I am also asked to show that the maximum point can also be displayed with the following function: atan(x)-4/(x.^2+1) = 0 and prove that the two different
functions are equivalent.
 
 Numerical part:

The scripts that find the maximum point of the function::
 function= @(x) exp(-x/4)*atan(x)
 
 I have derived function by hand and called it Nullfunk in my script furthermore, I use the Bisection method to find my critical point with Nullfunk in interval [0,3]
 
 algorithm goes as followes:
 
 1. Start with two values, a and b, such that the function f(x) has opposite signs at a and b (f(a) and f(b) have opposite signs). This means that a root of the function must lie between a and b.
 2. Calculate the midpoint of the interval, c = (a + b)/2.
 3. If f(c) is equal to zero, then c is a root of the function and the algorithm terminates.
 4. If f(a) and f(c) have opposite signs, then the root must lie in the interval (a, c). Set b = c and go back to step 2.
 5. If f(c) and f(b) have opposite signs, then the root must lie in the interval (c, b). Set a = c and go back to step 2.
 6. Repeat this process until the desired accuracy is achieved.
  
  Numeric solution example:
  
  <img src="images/numerical.png" width="900" height="550">
  
  
 Analytical calculation of the function:
 

<img src="images/analytical_calculation.png" width="900" height="550">



