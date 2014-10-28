%grid problem


n1=eps(0);
for Gx=1:10;
    for Gy=1:10;
        S=(Gy/4)*n1-(Gx/4)*n1;
        Cod=[Gx,Gy];
        axis([0 10 0 10]);
        hold on;
        if S<0
            plot(Gx,Gy,'r+');
        else if S>0
             plot(Gx,Gy,'b+');
           
            else
                 %disp('IMSC');
            end
        
           
            
            
        end
    end
end
