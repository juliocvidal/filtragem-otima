%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% E2D: converte de angulos de Euler 123 para DCM
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function D  = E2D(a)

phi = a(1);
theta = a(2);
psi = a(3);

% conversão de ângulos de Euler 123 para matriz de atitude D

D = [cos(psi)*cos(theta), cos(psi)*sin(theta)*sin(phi)+sin(psi)*cos(phi), -cos(psi)*sin(theta)*cos(phi)+sin(psi)*sin(phi);
    -sin(psi)*cos(theta), -sin(psi)*sin(theta)*sin(phi)+cos(psi)*cos(phi), sin(psi)*sin(theta)*cos(phi)+cos(psi)*sin(phi);
    sin(theta) , -cos(theta)*sin(phi), cos(theta)*cos(phi)];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%