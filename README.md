# Solid_Mechanics
This repository will contain codes related to solid mechanics for ease of access.


## 1. Filename: `Strain_Transformation.m`

### Strain Tensor Rotation and Transformation

This script performs the transformation of a strain tensor due to a rotation about the x-axis. It takes an initial strain matrix defined in the original coordinate system and applies a rotation matrix to compute the transformed strain matrix in the new coordinate system.

#### Author:
- **Name**: Amal M S
- **Affiliation**: PhD Student, Aerospace Engineering, IIT Kanpur

#### Description:
This MATLAB code calculates the transformed strain tensor after a rotation about the x-axis by an angle \( t \). The rotation matrix used corresponds to a basic 3D rotation about the x-axis, and the transformation rule applied is:

\[
\epsilon'_{kl} = A_{ki} A_{lj} \epsilon_{ij}
\]

Where:
- \( A \) is the rotation matrix,
- \( \epsilon \) is the original strain tensor.

#### Usage:
To run the script:
1. Define the symbolic strain components and the angle of rotation.
2. Execute the script to obtain the transformed strain matrix in the new coordinate system.

#### Features:
- Symbolic computation of the strain tensor transformation.
- Flexible enough to adapt for different rotation angles or axes.
