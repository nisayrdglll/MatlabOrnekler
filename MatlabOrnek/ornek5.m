C1 = [0 0];   % center of the circle
C2 = [-5 7.5];
R1 = [8 10];  % range of radii
R2 = [8 10];
A1 = [1 3]*pi/2; % [rad] range of allowed angles
A2 = [-1 1]*pi/2;

nPoints = 500;

urand = @(nPoints,limits)(limits(1) + rand(nPoints,1)*diff(limits));
randomCircle = @(n,r,a)(pol2cart(urand(n,a),urand(n,r)));

[P1x,P1y] = randomCircle(nPoints,R1,A1);
P1x = P1x + C1(1);
P1y = P1y + C1(2);

[P2x,P2y] = randomCircle(nPoints,R2,A2);
P2x = P2x + C2(1);
P2y = P2y + C2(2);

figure
plot(P1x,P1y,'or'); hold on;
plot(P2x,P2y,'sb'); hold on;
axis square