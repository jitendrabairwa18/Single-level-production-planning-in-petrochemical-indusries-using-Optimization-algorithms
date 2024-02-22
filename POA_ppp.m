
clc
clear
close all
%%
%%
[product,l,m,h,il,im,ih,cl,cm,ch,SP,rm1,rm2,rm3,nProcess] = ProductionPlanningData;
upperbound = h';
lowerbound=zeros(1,nProcess);
dimension = length(upperbound);


fitness=@SKS_ProductionPlanning;

SearchAgents=50;
Max_iterations=100; 
% Nruns = 51;% maximum number of iteration
% %[lowerbound,upperbound,dimension,fitness]=fun_info(Fun_name); % Object function information
% for i = 1:Nruns
%     rng(i,'twister')

    
    [Best_score,Best_pos,POA_curve]=POA(SearchAgents,Max_iterations,lowerbound,upperbound,dimension,fitness);
% end
% Stat(1,1) = min(Best_score);
% Stat(1,2) = max(Best_score);
% Stat(1,3) = mean(Best_score);
% Stat(1,4) = median(Best_score);
% Stat(1,5) = std(Best_score);
