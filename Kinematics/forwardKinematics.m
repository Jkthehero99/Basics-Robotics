function [T01,T12,T23,T34,T45,T56,Etip] =  forwardKinematics(theta1,theta2,d3,theta4,theta5,theta6)

%T00 = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1];
T01 = getTransformMatrix(theta1,1,0,-90);
T12 = getTransformMatrix(theta2,0.5,0,90);
T23 = getTransformMatrix(0,d3,0,-90);
T34 = getTransformMatrix(theta4,1.5,0,-90);
T45 = getTransformMatrix(theta5,0,0,90);
T56 = getTransformMatrix(theta6,2,0,0);

Etip =  T01 * T12 * T23 * T34 * T45 * T56

end