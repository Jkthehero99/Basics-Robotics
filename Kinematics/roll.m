function [roll] = roll(t3)
roll = [cos(t3),-sin(t3),0,0;sin(t3),cos(t3),0,0;0,0,1,0;0,0,0,1];
end

