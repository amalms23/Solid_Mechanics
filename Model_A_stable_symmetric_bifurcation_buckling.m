% Define constants K and L (replace with your actual values)
K = 100;  % Example value for K
L = 5;   % Example value for L

% Create a range of theta values (in radians)
theta = linspace(-0.025*pi , 0.025*pi , 100); % Avoid theta = 0 and pi where sin(theta) is zero

% Calculate P for each value of theta
P = (K/L) * (theta ./ sin(theta));

% Create the plot
plot(theta, P)
% Adjust axis limits if needed
xlim([-0.025*pi, 0.025*pi]);
ylim([19.98, 20.04]); % Adjust y-axis limits as needed

% Add labels and title
xlabel('Theta (radians)')
ylabel('P')
title(['Plot of P vs. Theta (K = ' num2str(K) ', L = ' num2str(L) ')'])

% Add a grid for better readability (optional)
grid on

% Adjust axis limits if needed
% xlim([0, pi]) % Set x-axis limits from 0 to pi
% ylim([0, 20]) % Set y-axis limits (adjust as needed)

% Add a note about the singularity at 0 and pi
text(pi/2, max(P)*0.9, 'Note: P approaches infinity as theta approaches 0 or pi', 'HorizontalAlignment', 'center');


% --- Improved version with handling of singularity ---
% Define constants K and L
K = 100;
L = 5;

% Create a range of theta values, excluding the singularity points
theta1 = linspace(-0.025*pi, -0.001, 50);
theta2 = linspace(0.001,0.025*pi, 50);

% Calculate P for each part of the theta range
P1 = (K/L) * (theta1 ./ sin(theta1));
P2 = (K/L) * (theta2 ./ sin(theta2));

% Create the plot
figure; % Create a new figure
plot(theta1, P1, 'b', theta2, P2, 'b'); % Plot both parts in blue

% Add labels and title
xlabel('Theta (radians)');
ylabel('P');
title(['Plot of P vs. Theta (K = ' num2str(K) ', L = ' num2str(L) ')']);

% Add a grid
grid on;

% Adjust axis limits if needed
xlim([-0.025*pi, 0.025*pi]);
ylim([19.98, 20.04]); % Adjust y-axis limits as needed

% Add a vertical line to indicate the singularity (optional)
%line([0 0], ylim, 'Color', 'r', 'LineStyle', '--');
%line([pi pi], ylim, 'Color', 'r', 'LineStyle', '--');

% Add a note about the singularity
text(pi/2, max(max(P1),max(P2))*0.9, 'Note: P is undefined at theta = 0 and pi', 'HorizontalAlignment', 'center');