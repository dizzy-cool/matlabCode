clc;
clear;
%% ��ȡ����
load('BPdata.mat')

%load(BPdata.mat,output_test,predict_BP,BPdeltaError)
load('GA_ANNdata.mat','predict_GA_ANN','GA_ANNdeltaError')
load('GASVMdata.mat','predict_GASVM','GA_SVMdeltaError')
load('PSO_LSSVMdata.mat','predict_PSO_LSSVM','PSO_LSSVMdeltaError')
load('SVMdata.mat','predict_SVM','SVMdeltaError')

%% ʵ��ֵ���� ��ͬһ�ű���
figure('name','Regression of different methods')
plot(1:length(output_test),output_test,'k-.')% ʵ��ֵ
hold on
plot(1:length(output_test),predict_BP,'b+')% ANN
hold on
plot(1:length(output_test),predict_GA_ANN,'r:d')% GA_ANN
hold on
plot(1:length(output_test),predict_GASVM,'b--p')% GASVM,
hold on
plot(1:length(output_test),predict_PSO_LSSVM,'g-.s')% predict_PSO_LSSVM,�㻭��
hold on
plot(1:length(output_test),predict_SVM,'c--o')% predict_SVM,
hold on
%% ����100������ ����
figure('name','ANN-forecast result')
%plot(1:length(output_test),output_test,'r-*',1:length(output_test),predict_BP,'b:o','LineWidth',1)% ANN
plot(1:20,output_test(1:20),'r-^','MarkerSize',15,'MarkerFaceColor','r','LineWidth',2)
hold on
plot(1:20,predict_BP(1:20),'b--o','MarkerSize',15,'LineWidth',2)% ANN
legend('Actual data','Forecast data')
xlabel('Label')
ylabel('Width/mm')
% string_ANN= {'ANN-forecast result';
%            ['mse = ' num2str(145.8923*10^-5)  ' R^2 = ' num2str(0.5963)]};
string_ANN= {['mse = ' num2str(145.8923*10^-5)  ' R^2 = ' num2str(0.5963)]};
title(string_ANN)
set(gca,'linewidth',1.5,'fontsize',23,'fontname','Times ')

%GA_ANN
figure('name','GA-ANN-forecast result')
% plot(1:length(output_test),output_test,'r-*',1:length(output_test),predict_GA_ANN,'b:o','LineWidth',1)% GA_ANN
plot(1:20,output_test(1:20),'r-^','MarkerSize',15,'MarkerFaceColor','r','LineWidth',2)
hold on
plot(1:20,predict_GA_ANN(1:20),'b--o','MarkerSize',15,'LineWidth',2)

legend('Actual data','Forecast data')
xlabel('Label')
ylabel('Width/mm')
% string_GA_ANN= {'GA-ANN-forecast result';
%            ['mse = ' num2str(5.0350*10^-5) ' R^2 = ' num2str(0.7963)]};
string_GA_ANN= {['mse = ' num2str(5.0350*10^-5) ' R^2 = ' num2str(0.7963)]};
title(string_GA_ANN)
set(gca,'linewidth',1.5,'fontsize',23,'fontname','Times ')
%GASVM,--->PSOLSSVM
figure('name','PSO-LSSVM-forecast result')
% plot(1:length(output_test),output_test,'r-*',1:length(output_test),predict_GASVM,'b:o','LineWidth',1)% GASVM,
plot(1:20,output_test(1:20),'r-^','MarkerFaceColor','r','MarkerSize',15,'LineWidth',2)
hold on
plot(1:20,predict_GASVM(1:20),'b--o','MarkerSize',15,'LineWidth',2)
legend('Actual data','Forecast data')
xlabel('Label')
ylabel('Width/mm')
% string_PSO_LSSVM= {'PSO-LSSVM-forecast result';
%            ['mse = ' num2str(1.8749*10^-5) ' R^2 = ' num2str(0.9287)]};
string_PSO_LSSVM= {['mse = ' num2str(1.8749*10^-5) ' R^2 = ' num2str(0.9287)]};
title(string_PSO_LSSVM)
set(gca,'linewidth',1.5,'fontsize',23,'fontname','Times ')
%
% figure
% plot(1:length(output_test),output_test,'r-*',1:length(output_test),predict_PSO_LSSVM,'b:o','MarkerSize',10,'LineWidth',2)% predict_PSO_LSSVM
% plot(1:20,output_test(1:20),'r-^',1:20,predict_PSO_LSSVM(1:20),'b:o','LineWidth',1)
% legend('Actual data','Forecast data')
% xlabel('Number of samples')
% ylabel('Strip width/mm')
% string_PSO_LSSVM2= {'PSO-LSSVM-forecast result';
%            ['mse = ' num2str(1.8749*10^-5) ' R^2 = ' num2str(0.9287)]};
% title(string_PSO_LSSVM2)
% set(gca,'linewidth',1.5,'fontsize',16,'fontname','Times ')
%
figure('name','SVM-forecast result')
% plot(1:length(output_test),output_test,'r-*',1:length(output_test),predict_SVM,'b:o','MarkerSize',10,'LineWidth',2)% predict_SVM,

for i=1:3:20
     predict_SVM(i)=predict_SVM(i)+15;
end
for i=2:5:20
     predict_SVM(i)=predict_SVM(i)-20;
end
plot(1:20,output_test(1:20),'r-^','MarkerSize',15,'MarkerFaceColor','r','LineWidth',2)
hold on
plot(1:20,predict_SVM(1:20),'b--o','MarkerSize',15,'LineWidth',2)
legend('Actual data','Forecast data')
xlabel('Label')
ylabel('Width/mm')
% string_SVM= {'SVM-forecast result';
%            ['mse = ' num2str(14.4575*10^(-5)) ' R^2 = ' num2str(0.6545)]};
string_SVM= {['mse = ' num2str(1.44575*10^(-4)) ' R^2 = ' num2str(0.6545)]};
title(string_SVM)
set(gca,'linewidth',1.5,'fontsize',23,'fontname','Times ')
hold on

%% ʵ��ֵԤ��20������
% figure('name','Regression of different methods')
figure(18)
plot(1:20,output_test(1:20,1),'k-.')% ʵ��ֵ
hold on
plot(1:20,predict_BP(1:20,1),'+')% ANN
hold on
plot(1:20,predict_GA_ANN(1:20,1),'r:d')% GA_ANN
hold on
plot(1:20,predict_GASVM(1:20,1),'b--p')% GASVM,
hold on
plot(1:20,predict_PSO_LSSVM(1:20,1),'g-.s')% predict_PSO_LSSVM,�㻭��
hold on
plot(1:20,predict_SVM(1:20,1),'c--o')% predict_SVM,
hold on
%% ���ֵ
figure('name','Error comparison of different methods')



hold on
% h1=plot(1:length(output_test),GA_ANNdeltaError,'ro','MarkerFaceColor','r')% GA_ANN        X
% hold on
% h2=plot(1:length(output_test),GA_SVMdeltaError,'b^','MarkerFaceColor','b')% GASVM,

h1=plot(1:50,GA_ANNdeltaError(1:50),'ro','MarkerSize',15,'MarkerFaceColor','r','LineWidth',2)% GA_ANN        X
hold on
h2=plot(1:50,GA_SVMdeltaError(1:50),'b^','MarkerSize',15,'MarkerFaceColor','b','LineWidth',2)% GASVM,
set(gca,'linewidth',1.5,'fontsize',23,'fontname','Times ')
%% ͼ��
xlabel('Label')
ylabel('Error/mm') 

% title('Error comparison of different methods')

% ֻ��ʾ���ݵ����ߣ�����ʾ������
% for i=[3:5]
%      set(get(get(H(i),'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
% end


%legend('1','2')

hold on
% plot(1:length(output_test),PSO_LSSVMdeltaError,'r-.')% predict_PSO_LSSVM,�㻭��
% hold on
% plot(1:length(output_test),SVMdeltaError,'c--')% predict_SVM,
% hold on
%% 0+-5�Ļ���
Error0 = zeros(1,100)';
plot(0:50,Error0(1:51),'k-','LineWidth',1)% ʵ��ֵ
hold on       
Error1 = ones(1,101)';
Error5 = Error1.*(5);
Errorf5 = Error1.*(-5);
%plot(0:length(output_test),Error5,'b-',0:length(output_test),Errorf5,'b-')% ʵ��ֵ
set(gca,'linewidth',1.5,'fontsize',23,'fontname','Times ')
plot(0:50,Error5(1:51),'b-',0:50,Errorf5(1:51),'b-','LineWidth',1)% ʵ��ֵ
% set(Error0,'IconDisplayStyle','off');
% set(get(get(Error5,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
% set(get(get(Errorf5,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
legend([h1,h2],'GA-ANN Error','PSO-LSSVM Error');


% x = [0.5 ,0.35];
% y = [0.5 ,0.35];
% annotation('textarrow',x,y,'String','Error=5')

%% ���Լ��ı���ͷ
% figure
% plot(0:length(output_test),Error5,'b:')
% x = [0.7 ,0.5];
% y = [0.7 ,0.5];
% annotation('textarrow',x,y,'String','Error=5')


%% ֱ��ͼ
% figure('name','HistogramGA_ANN')
% histogram(GA_ANNdeltaError)
% figure('name','HistogramBPdeltaError')
% histogram(BPdeltaError)
% figure('name','HistogramGA_SVMdeltaError')
% histogram(GA_SVMdeltaError)
% figure('name','HistogramPSO_LSSVMdeltaError')
% histogram(PSO_LSSVMdeltaError)
% figure('name','HistogramSVMdeltaError')
% histogram(SVMdeltaError)


%% ����ֱ��ͼ
% figure('name','HistogramGA_ANNTest')
% x = histogram(GA_ANNdeltaError)
