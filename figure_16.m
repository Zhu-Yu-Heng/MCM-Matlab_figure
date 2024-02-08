%Complex Parasitic Competitive Dynamics System
a1 = 0.2;
a2 = 0.3;
r1 = 0.5;
r2 = 0.7;
e1 = 0.1;
e2 = 0.15;
d1 = 0.1;
d2 = 0.15;
h = 4;
x0 = [0.8, 0.2, 0.5]; 
time = [0, 100]; 

%solve the equation
[t, x] = ode45(@(t, x) ecosystem_equations(t, x, a1, a2, r1, r2, e1, e2, d1, d2, h, m), time, x0);

% drawing
figure;
plot(t, x(:, 1), 'LineWidth', 2,'color','#6B9B7D', 'DisplayName', 'Sea lamprey' );
hold on;
plot(t, x(:, 2), 'LineWidth', 2,'color','#9F9FD5', 'DisplayName', 'Parasite');
plot(t, x(:, 3), 'LineWidth', 2, 'color','#EE982B','DisplayName', 'Bait');
xlabel('Time / Week','FontName','Times New Roman','Linewidth', 2);
ylabel('The population density of different spices','FontName','Times New Roman','Linewidth', 2);
legend('show');
legend('boxoff');

% figure;
% plot3(x(:,1),x(:,2),x(:,3));
% grid on


function dxdt = ecosystem_equations(t, x, a1, a2, r1, r2, e1, e2, d1, d2, h, m)
%Function Sea lamprey
dxdt(1, 1) = x(1) * (1 - x(1) - x(2) / (1 + a1 * x(1)) - x(3) / (1 + a2 * x(1)));
%Function Parasite
dxdt(2, 1) = r1 * x(2) * (x(1) / (1 + a1 * x(1)) - e1 * x(3) / (1 + h * x(2)) - d1);
%Function Bait
dxdt(3, 1) = r2 * x(3) * (x(1) / (1 + a2 * x(1)) + e2 * x(2) / (1 + h * x(2)) - d2) ;
end