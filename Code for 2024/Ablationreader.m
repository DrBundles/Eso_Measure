% This .m file must be located in the same folder as the labview files
clear 
Data = readtable('Matlab test17.xlsx');% place file name here
Time = Data{:,1}; 
C = 1;
for i = 1:9
  if sum(Data{:,i+10})>0  
     Ablation(:,C) = Data{:,i+1};
     Channels{1,C} = (['Channel ',num2str(i)]); 
     MAX = max(Data{:,i+1}); 
     [r,c] = find(Data{:,i+1} == MAX);
     Sec = Data{r,1}; 
     disp(['The highest Temperature for Channel ',num2str(i)...
         , ' is ', num2str(MAX), ' at ', num2str(Sec'),' Seconds.'])
     C = C+1;
  end
end

plot(Time,Ablation);
title('Channels Ablated'); 
xlabel('Time(sec)');
ylabel('Temperature(F)');
legend(Channels); 
grid on





