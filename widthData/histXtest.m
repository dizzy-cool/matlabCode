%%  绘制直方图
clc;
clear;
%% 读取数据
load('BPdata.mat')

%load(BPdata.mat,output_test,predict_BP,BPdeltaError)
load('GA_ANNdata.mat','predict_GA_ANN','GA_ANNdeltaError')
load('GASVMdata.mat','predict_GASVM','GA_SVMdeltaError')
load('PSO_LSSVMdata.mat','predict_PSO_LSSVM','PSO_LSSVMdeltaError')
load('SVMdata.mat','predict_SVM','SVMdeltaError')

% figure('name','HistogramGA_ANN')
% histogram(GA_ANNdeltaError)
edges = [-15:1:15]

GA_SVM = histogram(GA_SVMdeltaError)
figure('name','GA_SVMdeltaError0522')
histogram(GA_SVMdeltaError)

SVM = histogram(SVMdeltaError)
figure('name','SVMdeltaError0522')
histogram(SVMdeltaError)

GA_ANN = histogram(GA_ANNdeltaError)
figure('name','GA_ANNdeltaError0522')
histogram(GA_ANNdeltaError)

PSO_LSSVM = histogram(PSO_LSSVMdeltaError)
figure('name','PSO_LSSVMdeltaError0522')
histogram(PSO_LSSVMdeltaError)

%% 

% X = randn(1000,1);
% edges = [-30 -15:1:15 30]
% 
% h = histogram(X)
% figure('name','histXtest')
% histogram(X,edges)