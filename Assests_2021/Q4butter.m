u = [1 0.518 1];
v = [1 1.414 1];
z = [1 1.932 1];

x = conv(u,v);
y = conv(x,z);

a = (-1).^(1:length(y));

B=tf([1],y); %Transfer function of the system

figure(1),pzmap(B) %Pole-zero plot of the system function B(S)

grid on

%% (ii) B(S)*B(-S)

B1=tf([1],y); %Transfer function of the system B(S)
B2=tf([1],a.*y);%Transfer function of the system B(-S)
BT=series(B1,B2); %System BT(S)
figure(2),pzmap(BT) %Pole-zero plot of the system function BT(S)
grid on

%% Designing sixth order Butterworth Filter
fs=100; %Sampling frequency
fc=20; %Cut-off frequency
Wn=(fc/(fs/2));
[z,p,k] = butter(6,Wn,'low'); % Third of Butterworth filter in pole-zero form
[BS] = zp2sos(z,p,k); % Convert to transfer function form

figure(3),h = fvtool(BS); % Plot magnitude response