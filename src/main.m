clear all
close all



x = 0:0.1:2*pi;
x = x';
units = 22; % Number of neurons (in hidden layer)
% f = sin2x(x);
f = cos2x(x);
% f = f./x;
% plot(x,f)
% f = square(2*x)
makerbf;

Phi = calcPhi(x,m,var);

w = (Phi'*Phi)\(Phi'*f);

y = Phi*w;

%y = sign(y)

rbfplot1(x,y,f,units)
%%
fun = 'cos2x';
% itermax = 100;
% itersub = 2;
eta = 0.001;
diter


%% 5.0 RBF Placement by Self Organization
plotinit; %Initialize the plot parameters
data=read('cluster'); %Read datapoints from the data file
units=5; %Number of RBF units
vqinit; %Opens a plot window, positions the RBF units randomly in the space defined by the data and plots the data points and RBF units.
singlewinner=0; %Flag specifying the use of the 'winner take all' strategy. A false flag will allow all units to move.

%Using EM
vqiter;
