%
t1 = input('Enter yaw ');
t2 = input('Enter pitch ');
t3 = input('Enter roll ');

yaw = [1,0,0;0,cos(t1),-sin(t1);0,sin(t1),cos(t1)];
pitch = [cos(t2),0,sin(t2);0,1,0;-sin(t2),0,cos(t2)];
roll= [cos(t3),-sin(t3),0;sin(t3),cos(t3),0;0,0,1];
I = [1,0,0;0,1,0;0,0,1];

A = pitch*roll*yaw*I
Pf = [2;6;1];
Pm = A^-1*Pf;

disp(Pm);