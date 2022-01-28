clear
Kc = 1;
G1 = tf(19.5*Kc, [4 324 1902.6 (2827.8+ 19.5*Kc)]);

figure;    
hold on 
Kc = 100;
G2 = tf(19.5*Kc, [4 324 1902.6 (2827.8+ 19.5*Kc)]);
Kc = 10000;
G3 = tf(19.5*Kc, [4 324 1902.6 (2827.8+ 19.5*Kc)]);
rlocus(G1,'b', G2,'r', G3,'g')
title('Q4(b) - Closed-loop root-locus plot with varying Kc - U1943029') 
xlabel('Real Axis')
ylabel('Imaginary Axis') 
legend({'Kc=1k','Kc=100k','Kc=10M'},'Location','northwest')
hold off