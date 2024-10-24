
%####   STRAIN TRANSFORMATION   ####%

% Author: Amal M S
% Affiliation: PhD Student, Aerospace Engineering, IIT Kanpur
% Date: October 24, 2024

% This script performs the rotation of a strain tensor 
% about the x axis by an angle 't' and computes
% the new strain matrix after applying the given rotation matrix.

syms t e11 e12 e13 e22 e23 e33
% Define symbolic variables for the strain components

A = [1 0 0; 0 cos(t) -sin(t); 0 sin(t) cos(t)];
% Define the rotation matrix A, where 't' is the angle of rotation.
% This matrix rotates the strain tensor about the x-axis.

e = [e11 e12 e13; e12 e22 e23; e13 e23 e33];    
% Define the strain tensor in the original coordinates.
% It's a symmetric 3x3 matrix with components e11, e12, etc.

e_new = sym(zeros(3,3));                      
% Initialize the new strain matrix 'e_new' as a 3x3 matrix of zeros.
% This matrix will hold the transformed strain components.

% Loop through the rows (i) and columns (j) of the new strain matrix
for i = 1:3
    for j = 1:3
        e_new(i, j) = 0;  
        % Initialize each element of the transformed strain matrix 'e_new(i, j)' to zero
        
        % Loop through the indices of the original strain matrix (k, l) for transformation
        for k = 1:3
            for l = 1:3
                % Perform the strain transformation by applying the rotation matrix
                e_new(i, j) = e_new(i, j) + A(k, i) * A(l, j) * e(k, l);
                % The new strain components are computed as: 
                % e'_ij = A_ki * A_lj * e_kl, summing over indices k and l
            end
        end
    end
end

e_new 
% Output the transformed strain matrix 'e_new' in the new coordinate system.
