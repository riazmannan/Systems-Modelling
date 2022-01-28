% Q1
% R1 = 4;
% R2 = 12;
% L = 0.1;
L = 0.05;
%Q1b
M1 = 2;
M2 = 2;
b1 = 5;
b2 = 5;
% b12 = 4;
b12 = 1;
% k = 1;
R1 = 5;
R2 = 15;

%Varying b12
% b12 = [2 4 6 8 10 12];

% figure;

% plot(out.tout, out.v1);
% hold on;
% plot(out.tout, out.v2(:, 1));
% plot(out.tout, out.v2(:, 2));
% plot(out.tout, out.v2(:, 3));
% plot(out.tout, out.v2(:, 4));
% plot(out.tout, out.v2(:, 5));
% plot(out.tout, out.v2(:, 6));
% grid on;
% legend('v_{1}', 'v_{2}');
% legend('2', '4', '6', '8', '10', '12');
% title('Q2b - Unit Step Responses for both v_{1} and v_{2}');
% title('Varying b_{12}');
% xlabel('Time, t (s)');
% ylabel('Velocity, v (ms^{-1})');
% sys = tf(b12,  [(M1*M2), (M1*(b2+b12)+M2*(b1+b12)), ((b1*b2)+(b1+b2)*b12)]);
% sys = tf(4, [4, 36, 65]);
% [wn,zeta] = damp(sys);
% data = step(sys);
% figure;
% hold on;
% step(sys);
% grid on;


% k = [1 2 3 4 5 6 7 8 9 10];

% Q3
% figure;
% hold on;
% plot(out.tout, out.v2(:,1));
% plot(out.tout, out.v2(:,2));
% plot(out.tout, out.v2(:,3));
% plot(out.tout, out.v2(:,4));
% plot(out.tout, out.v2(:,5));
% plot(out.tout, out.v2(:,6));
% plot(out.tout, out.v2(:,7));
% plot(out.tout, out.v2(:,8));
% plot(out.tout, out.v2(:,9));
% plot(out.tout, out.v2(:,10));
% grid on;
% title('Q3b - Step Response for Unit Step Input at Time t = 1 for e_{i}(t) only');
% xlabel('Time, t (s)');
% ylabel('Velocity, v (ms^{-1})');
% legend('k = 1', 'k = 2', 'k = 3', 'k = 4', 'k = 5', 'k = 6', 'k = 7', 'k = 8', 'k = 9', 'k = 10');
% k = 1.3;
% p = roots([4 324 (1835+(40*k^2)) (2625+(120*k^2))]);
% Kc = [1 10 100 1000 10000 100000 1000000 20000 500];
% % Kc = 1;
% sys1 = tf(19.5, [4 324 1902.6 (2827.8)]);
% sys2 = tf(19.5*Kc(2), [4 326 1902.6 (2827.8+ 19.5*Kc(2))]);
% sys3 = tf(19.5*Kc(3), [4 324 1902.6 (2827.8+ 19.5*Kc(3))]);
% sys4 = tf(19.5*Kc(4), [4 324 1902.6 (2827.8+ 19.5*Kc(4))]);
% sys5 = tf(19.5*Kc(5), [4 324 1902.6 (2827.8+ 19.5*Kc(5))]);
% sys6 = tf(19.5*Kc(6), [4 324 1902.6 (2827.8+ 19.5*Kc(6))]);
% sys7 = tf(19.5*Kc(8), [4 324 1902.6 (2827.8)]);
% sys8 = tf(19.5*Kc(9), [4 324 1902.6 (2827.8)]);
% % rlocus(sys1)
% figure;
% rlocus(sys1)
% rlocus(sys1, sys2, sys3, sys4, sys5, sys6);
% grid on;
% title('Closed-Loop Root Locus as K_{c} Varies');
% legend('Kc = 1', 'Kc = 10', 'Kc = 100', 'Kc = 1000', 'Kc = 10000', 'Kc = 100000');
% rlocus(sys)
% figure('Name','Unstable');
% hold on;
% grid on;
% nyquist(sys7);
% figure('Name','Stable');
% nyquist(sys8);
%bode
% figure;
% margin(sys8);
% hold on;
% [Gm,Pm,Wg,Wp] = margin(sys8);

% sys0refUnstable = tf(19.5, [4 324 1902.6 (2827.8+ 19.5*Kc(6)) 0]);
% sys0refStable = tf(19.5, [4 324 1902.6 (2827.8+ 19.5*Kc(4)) 0]);
% sys0disUnstable = tf(19.5*Kc(6), [4 324 1902.6 (2827.8+ 19.5*Kc(6)) 0]);
% sys0disStable = tf(19.5*Kc(4), [4 324 1902.6 (2827.8+ 19.5*Kc(4)) 0]);
% figure('Name','0refUnstable');
% step(sys0refUnstable);
% figure('Name','0distUnstable');
% step(sys0disUnstable);
% figure('Name','0refStable');
% step(sys0refStable);
% figure('Name','0distStable');
% step(sys0disStable);

% % zero disturbance stable 
% Kc = 500;
% figure;
% plot(out.tout, out.s);
% grid on;
% title('Unit Step Response (Zero Disturbance) when K_{c} = 500');
% xlabel('Time, t (s)');
% ylabel('Magnitude')

% % zero disturbance unstable
% Kc = 20000;
% figure;
% plot(out.tout, out.s);
% grid on;
% title('Unit Step Response (Zero Disturbance) when K_{c} = 20000');
% xlabel('Time, t (s)');
% ylabel('Magnitude')

%zero response stable
% Kc = 500;
% figure;
% plot(out.tout, out.s);
% grid on;
% title('Unit Step Disturbance (Zero Reference) when K_{c} = 500');
% xlabel('Time, t (s)');
% ylabel('Magnitude')

% %zero response unstable
% Kc = 20000;
% figure;
% plot(out.tout, out.s);
% grid on;
% title('Unit Step Disturbance (Zero Reference) when K_{c} = 20000');
% xlabel('Time, t (s)');
% ylabel('Magnitude')
% 
% 
% % Q5
% 
%
% Kc = 500;
KD = [1/80 1/50 1/3 1/2];
sys_1 = tf([19.5*KD(1) 19.5], [4 324 (1902.6) (2827.8)]);
sys_2 = tf([19.5*KD(2) 19.5], [4 324 (1902.6) (2827.8)]);
sys_3 = tf([19.5*KD(3) 19.5], [4 324 (1902.6) (2827.8)]);
sys_4 = tf([19.5*KD(4) 19.5], [4 324 (1902.6) (2827.8)]);
figure('Name','z<p1');
rlocus(sys_1);
title('Root Locus when K_{D} = ^{1}/_{80}')
grid on;
figure('Name','p1<z<p2');
rlocus(sys_2);
title('Root Locus when K_{D} = ^{1}/_{50}')
grid on;
figure('Name','p2<z<p3');
rlocus(sys_3);
title('Root Locus when K_{D} = ^{1}/_{3}')
grid on;
figure('Name','p3<z<p4');
rlocus(sys_4);
title('Root Locus when K_{D} = ^{1}/_{2}')
grid on;


