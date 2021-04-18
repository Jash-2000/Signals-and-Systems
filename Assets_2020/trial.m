sam_freq = 2e004;                   % represented in scientific notation
t = linspace(0,2,sam_freq);  
w = 507;
sig_1a = 2*cos(w*t);
timeperiod = 1/w;
plot(t,sig_1a,'r')
hold on
t_2 = linspace(0,1.9,sam_freq);
sig = 2*cos(w*t_2)
plot(t_2,sig,'g')

hold off
