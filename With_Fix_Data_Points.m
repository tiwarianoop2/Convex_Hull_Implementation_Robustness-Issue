%example
%convex hull perfect drwn boundary
%P=[4,7;2,8;3,9;4,2;7,3;5,5];
hold on;
axis([0 20 0 20]);
P=[4,7;2,8;5,8;4,2;7,3;5,5];
ss1=[];
ii2=1;
XM=P(:,1);
YM=P(:,2);
plot(XM,YM,'r*');
for i=1:6
    %kk=0;
for j=i+1:6
    q1=P(i,:);
    q2=P(j,:);
    tst1=0;
    tst2=0;
    tst3=0;
    lh=line([q1(1,1),q2(1,1)],[q1(1,2),q2(1,2)]);
    pause(2);
    if ~isequal(q1,q2)
    for k=1:6
    q3=P(k,:);
    X=q3(1,1);
    Y=q3(1,2);
    q3=(Y-q1(1,2))*(q1(1,1)-q2(1,1))-(q1(1,2)-q2(1,2))*(X-q1(1,1));
    if q3==0
        tst1=tst1+1;
        %disp(sprintf('OK__%d',k));
    else if q3<0
        
        tst2=tst2+1;
            %disp(sprintf('left__%d',k));
        else if q3>0
                
                tst3=tst3+1;
                %disp(sprintf('right__%d',k));
            end
        end
    end
    end%end of k
    end% end of if
    if ((tst2~=0)&&(tst3~=0)&&(tst1~=0))||((tst2~=0)&&(tst3~=0)&&(tst1==0))
        %do nothing
        delete(lh);
    else
        %disp(q2);
       % hold on;
        %axis([0 20 0 20]);
       %scatter(q2(1,1),q2(1,2));
       %if i==2
           xm=[q1(:,1),q2(:,1)];
           xy=[q1(:,2),q2(:,2)];
       %subplot(2,3,ii2);    
      % line(xm,xy);
       %ii2=ii2+1;
       scatter(xm,xy);
       pause(2);
       %end
    end
   % disp('---------------------------------');
end%end of j 
%disp('+++++++++++++++++++++++++++++++++++++++++++++++++++++++');
end
