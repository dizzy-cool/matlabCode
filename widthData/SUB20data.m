absData=ones(20,1);
% a=roundn(sqrt(2),-4) %a=1.4142  ���Ա���С�����4λ���֣�
                       % ������ΪС����֮ǰ������ΪС����֮��
%% ȡ���ľ���ֵ
absData(:)=abs(roundn(GA_SVMdeltaError(1:20),-2))

%% ����Ԥ��ֵ��ʵ��ֵ��С����2λ����
predict_GASVM_data=roundn(predict_GASVM(:,1),-2);
t_test_data=roundn(t_test(:,1),-2);
predict_GAANN_data=roundn(predict_GA_ANN(:,1),-2);

%% ��������Ԥ��
% errorPersent=ones(20,1)
% errorPersent(:,1)=absData(:,1)./t_test_data(1:20,1)

%% ��λС��ʱ�����
PSO_LSSVMdataError2=t_test_data(1:20)-predict_GASVM_data(1:20)
PSO_LSSVMdataError2 = roundn(abs(PSO_LSSVMdataError2),-2)

GA_ANNdataError2=t_test_data(1:20)-predict_GAANN_data(1:20)
GA_ANNdataError2 = roundn(abs(GA_ANNdataError2),-2)

%% �����������ĵĲ�ֵ
% DIFF=dataError4-absData
