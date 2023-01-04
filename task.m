%Scripts that find the maximum point of the function::
% function= @(x) exp(-x/4)*atan(x)

%Endpoint
a=0;
b=3;

%Starting with the derivative function to find critical points
Nullfunk = @(x) atan(x)-4/(x.^2+1);

%Function values
Fa=Nullfunk(a);
Fb=Nullfunk(b);

%Precision
P = 1e-4;

while b-a>P

    c=(a+b)/2;             %Midpoint
    Fc =Nullfunk(c);       %Midpoint- function value
    if Fa*Fc>0             % If Fa and Fc have positive sign do this:
        a=c;               % Set new a to c
    else                   %If Fa and Fc don't have positive sign do this:
        b=c;               %Set new a to c
    end
end

% Calculates midpoint and prints result on screen.
% Now we know where critical point is
% is on the x axis

x=(a+b)/2

% We insert this value into the function, for
% to find the value of the maximum point point on the y axis

funksjon= @(x) exp(-x/4)*atan(x);

%Sets the x value into the original function and prints result on the screen

y = funksjon(x)

%Plot fuction
xVektor =0:1e-3:4;
fVektor = exp(-xVektor/4).*atan(xVektor);
dVektor = atan(xVektor)-4./(xVektor.^2+1);

plot(xVektor,fVektor,'LineWidth',1)
grid on
hold on
xlabel('X-akse');ylabel('Y-akse')          %Sets text on x and y axis
plot(x,y,'ko','LineWidth',2)                %maximumpoint

hold off
legend('f(x)','maksimalpunkt')
