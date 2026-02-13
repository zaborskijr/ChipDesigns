 %% SAW Theory device
 clear all; close all; clc
 %E = 177.2; %GPa of in plane young's modulus of monolayer MoSe2
 E = 177.2*10^9; %Pa
 f = 500; %MHz
 %p = 6.90; %g/cm^3 Density of bulk MoSe2
 p = 6.9*1000; %kg/m^3
 
 f = f*(10^6); %converting to Hz
 
 v = sqrt(E/p); % speed of the surface acoustic wave
 Lambda = v/f;
 Finger_pitch = Lambda/2;
 Width_fingers = Lambda/4;
 
 P = 2.73*10^-8; % Ohms*m Resitivity Aluminum
 R = P/Width_fingers; % Resistance, Ohms
 
 Eo = 8.854*(10^-12); % F/m
 Ep = 15*Eo; % Permittivity for MoSe2 (in-plane)
 Z_IDT = 50; %Ohms
 
 w = 2*pi*f; %solving for w
 
 C_IDT = (1/w)*(1/sqrt((Z_IDT^2) - R^2));
 
% C_IDT = sqrt(1/((w^2)*((Z_IDT)^2 - R^2)));
 
L_a = sqrt((C_IDT*Ep^2)/(2*Ep));
L_a = L_a*10^6;
N = L_a/Lambda;
 
 %%
 
 %  f = f*(10^6); %converting to Hz
 
 %C_IDT = (Ep*N*L_aperature)/d;
 
 N = ((4/(Z_IDT^2 - R^2))*(1/((w^2)*(Ep^2))))^(1/4);

 
 % Z_IDT = sqrt(R^2 + (1/(w*C_IDT))^2);
 %  R_fingers = P*L_fingers/A_fingers;
 % C = E*((N)^2)/2;
 %  C_IDT = (E*N*L_aperature)/d;
%  N = L_aperature/Finger_pitch; % number of fingers