syms x y z;
eq1 = 4*x + 3*y + 2*z == 25;
eq2 = -2*x + 2*y + 3 *z == -10;
eq3 = 3*x - 5*y + 2*z == -4;
[A,B] = equationsToMatrix([eq1,eq2,eq3],[x,y,z]);
A;
B;
c = linsolve(eq1,eq2);
c
plot(eq1,eq2);
title("My Plot");
grid on;
xlabel('x-axis');
ylabel('y-axis');
legend('Data points');
hold on;
[x,y]=ginput(2);
plot(eq1,eq2);
plot(eq1,eq2,'*');