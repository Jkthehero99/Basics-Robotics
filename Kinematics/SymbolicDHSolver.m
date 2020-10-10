%%Symbolic solver
noParams = input('Enter the number of axis: ');
T = [1,0,0,0;0,1,0,0;0,0,1,0;0,0,0,1];
A = sym('A%d%d',[noParams,4]);
for i=1:1:noParams
    Rz = [cos(A(i,1)),-sin(A(i,1)),0,0;sin(A(i,1)),cos(A(i,1)),0,0;0,0,1,0;0,0,0,1];
    Tz = [1,0,0,0;0,1,0,0;0,0,1,A(i,2);0,0,0,1];
    Tx = [1,0,0,A(i,3);0,1,0,0;0,0,1,0;0,0,0,1];
    Rx = [1,0,0,0;0,cos(A(i,4)),-sin(A(i,4)),0;0,sin(A(i,4)),cos(A(i,4)),0;0,0,0,1];
    T = T*(Rz*Tz*Tx*Rx);
end
% disp(T);

%T = vpa(subs(T,A(3,1),0),4);

for i=1:1:noParams 
    inp = input('Enter teta, d , a , alpha: ');
    if size(inp,2) ~= 4 
        disp('Wrong data entry found, please restart the code');
    else
        for j=1:1:4
            T = vpa(subs(T,A(i,j),inp(j)),4);
        end
     end
end
disp(T);
