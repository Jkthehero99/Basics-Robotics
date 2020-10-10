%%Transform matrix
T01= roll(pi/4)*trans(0,0,200)*trans(0,0,0)*yaw(0);
T12= roll(pi/2)*trans(0,0,0)*trans(0,0,0)*yaw(pi/2);
T23= roll(pi/2)*trans(0,0,150)*trans(0,0,0)*yaw(0);
T=T01*T12*T23;
disp(T)
% t1=pi/2;
% t2=pi/2;
% t3=pi/4;
% a2=177.7;
% a3=177.7;
% d1=215;
% B = [cos(t1)*(a2*cos(t2)+a3*cos(t2+t3)); sin(t1)*(a2*cos(t2)+a3*cos(t2+t3));d1-a2*sin(t2)-a3*sin(t2+t3)]