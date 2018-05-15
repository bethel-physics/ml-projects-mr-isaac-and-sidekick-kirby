function systempp(a,b,d,gamma,x,y)
X(1) = x;
Y(1) = y;
time(1) = 0;
tau = .04;
istep = 1;

while(istep <= 8/tau)
    istep = istep+1;
    dx = (a*X(istep-1)-b*X(istep-1)*Y(istep-1))*tau;
    dy = (d*X(istep-1)*Y(istep-1)-gamma*Y(istep-1))*tau;
    
    X(istep) = X(istep-1) + dx;
    Y(istep) = Y(istep-1) + dy;
   
    time(istep) = time(istep-1) + tau;
    figure(1);
    subplot(2,1,1);
    plot(time, X,'r-', time, Y,'g-');...
        xlabel('Time');ylabel('Population');...
        legend('Prey','Predators');xlim([0 8]);...
        title('Populations vs Time');
    subplot(2,1,2)
    plot(X,Y);xlabel('Prey');...
        ylabel('Predators');...
        title('Predator vs Prey Populations');
    pause(.00002);

end
    return
