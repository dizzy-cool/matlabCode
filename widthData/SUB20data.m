absData=ones(20,1);
% a=roundn(sqrt(2),-4) %a=1.4142  测试保留小数点后4位数字，
                       % 正数则为小数点之前，负数为小数点之后
%% 取误差的绝对值
absData(:)=abs(roundn(GA_SVMdeltaError(1:20),-2))

%% 保留预测值和实际值的小数点2位数据
predict_GASVM_data=roundn(predict_GASVM(:,1),-2);
t_test_data=roundn(t_test(:,1),-2);
predict_GAANN_data=roundn(predict_GA_ANN(:,1),-2);

%% 计算误差的预测
% errorPersent=ones(20,1)
% errorPersent(:,1)=absData(:,1)./t_test_data(1:20,1)

%% 四位小数时的误差
PSO_LSSVMdataError2=t_test_data(1:20)-predict_GASVM_data(1:20)
PSO_LSSVMdataError2 = roundn(abs(PSO_LSSVMdataError2),-2)

GA_ANNdataError2=t_test_data(1:20)-predict_GAANN_data(1:20)
GA_ANNdataError2 = roundn(abs(GA_ANNdataError2),-2)

%% 计算两种误差的的差值
% DIFF=dataError4-absData
