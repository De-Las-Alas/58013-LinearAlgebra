A = [-6 3; 4 5]

[ev,dv]=eig(A)

s=A*ev(:,1)

t=A*s

u=-7*s

v=A*ev(:,2)

w=6*v