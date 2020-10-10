%Composite Homogenous Transform

I = [1,0,0,0;0,1,0,0;0,0,1,0;0,0,0,1];
Pm = [-1,0,0,1;0,-1,0,0;0,0,1,1;0,0,0,1];
B = [1;2;3;1];
%A = trans(0,30,0)*roll(pi/2)*trans(0,0,20)*pitch(pi/2)*trans(10,0,0)*yaw(-pi/2)*I;

%A = I*roll(pi/4)*trans(0,0,5)*trans(8,0,0)*yaw(pi/6);
 %A = roll(pi/6)*trans(0,0,4)*Pm;
 %A1 = trans(0,0,4)*roll(pi/6)*Pm; 
 disp(A);
disp(A1);

