function [pitch] = pitch(t2)

pitch = [cos(t2),0,sin(t2),0;0,1,0,0;-sin(t2),0,cos(t2),0;0,0,0,1];

end

