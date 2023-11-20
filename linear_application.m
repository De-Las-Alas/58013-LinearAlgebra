syms x y z;
eq1 = 20*x + 10*y + 0*z == 350;
eq2 = 17*x + 22*y + 3*z == 500;
[E1,E2] = equationsToMatrix([eq1,eq2],[x,y]);
e = linsolve(eq1,eq2);
e
plot(E1,E2);
grid on;
xlabel('x-axis');
ylabel('y-axis');
legend('Data Points');
hold on;;
plot(E1,E2);
plot(E1,E2,'*');
title('Linear Application');
