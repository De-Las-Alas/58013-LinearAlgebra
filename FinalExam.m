%Question 1

A = [8 5 -6; -12 -9 12; -3 -3 5]

[ev, dv]=eig(A)

B=A*ev(:,1)

C=A*ev(:,2)

D=A*ev(:,3)

E=-1*ev(:,1)

F=3*ev(:,2)

G=2*ev(:,3)

%Question 2

syms x y z;

eq1 = 3*x - 1*y + 1*z == 5;
eq2 = 9*x - 3*y + 3*z == 15;
eq3 = -12*x + 4*y - 4*z == -20;

sol = solve(eq1, eq2, eq3), [x, y, z];
xsol = sol.x
ysol = sol.y
zsol = sol.z

%Question 3

H = [1, 1, 1; 1, 0, -1; 0, -3, 1];

H1 = [89,1,1; -6,0,-1; 0,-3,1];

H2 = [1,89,1; 1,-6,-1; 0,0,1];

H3 = [1,1,89; 1,0,-6; 0,-3,0];

x1 = det(H1/H)
x2 = det(H2/H)
x3 = det(H3/H)

Total = x1+x2+x3