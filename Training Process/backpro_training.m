%This function is the implementation of backpropagation algorithm for training process
%Backpropagation is one of algorithm of Artificial Neural Network
function backpro_training(dataset, architecture, initial_weights, learning_rate, maxError, maxEpoch)
weight_V = initial_weights{1};
weight_W = initial_weights{2};

datainput = dataset(:,1:10);
datatarget = dataset(:,11);

totalDataTraining = size (datainput,1);

num_neuronX = architecture(1);
num_neuronZ = architecture(2);
num_neuronY = architecture(3);

epoch=1;
MSE =1;
tic;
while  epoch<=maxEpoch && (MSE>maxError) %the iteration will stop when epoch >= maxEpox OR MSE <=maxEror
    
      for iData=1:totalDataTraining
        %PHASE 1 : FORWARD PROPAGATION
        for i=1:num_neuronZ
            sigmaV =0;
            for j=2:num_neuronX+1
                sigmaV = sigmaV + datainput(iData, j-1)*weight_V( i, j);
            end
            Znet(i) = 1*weight_V(i, 1) + sigmaV;
            Z(i) = 1/(1+ exp(-Znet(i)));
        end
        for i=1:num_neuronY
            sigmaW =0;
            for j=2:num_neuronZ+1
                sigmaW = sigmaW + Z(j-1)*weight_W( i, j);
            end
            Ynet(i) = 1*weight_W(i, 1) + sigmaW;
            Y(iData,i) = 1/(1+ exp(-Ynet(i))); 
        end
        
        %PHASE 2 : BACKWARD PROPAGATION
        for k=1:num_neuronY
            factor_d_output(k) = (datatarget(iData,k)-Y(iData,k))*Y(iData,k)*(1-Y(iData,k));
            deltaW(k,1) = learning_rate*factor_d_output(k)*1; 
            for j=2:num_neuronZ+1
                deltaW(k,j) = learning_rate*factor_d_output(k)*Z(j-1);
            end
        end
        dnet(1:num_neuronZ)=0;
        for i=2:num_neuronZ+1
            for j=1:num_neuronY
                dnet(i-1)=dnet(i-1) + factor_d_output(j)*weight_W(j,i);
            end
        end      
        for i=1:num_neuronZ
            factor_d_hidden(i) = dnet(i)*Z(i)*(1-Z(i));
            deltaV(i,1)=learning_rate*factor_d_hidden(i)*1;
            for j=2:num_neuronX+1
                deltaV(i,j)=learning_rate*factor_d_hidden(i)*datainput(iData,j-1);
            end
        end
        %PHASE III : WEIGHT ADJUSTMENT
        for i=1:num_neuronZ
            for j=1:num_neuronX+1
                weight_V(i,j)=weight_V(i,j)+deltaV(i,j);
            end
        end
        for i=1:num_neuronY
            for j=1:num_neuronZ+1
                weight_W(i,j)=weight_W(i,j)+deltaW(i,j);
            end
        end
        
        Y(iData, :) = backpro_prediction(datainput(iData,:), {weight_V weight_W}, architecture);
        
      end   
      
    MSE = calculate_MSE(Y, datatarget); %MSE is the loss value
    iterasi(epoch)= MSE
    epoch=epoch+1;
end
time=toc;
RESULT = {MSE, epoch-1, time}

%WRITE INTO EXCEL WEIGHT V
weightV_list={'hidden/input (weight V)', '''1'}; %for header
for i=1:num_neuronX
    weightV_list{1,i+2}=strcat('X',num2str(i));
end
for i=1:num_neuronZ
    weightV_list{i+1,1}=strcat('Z',num2str(i));
    for j=1:num_neuronX+1
        weightV_list{i+1,j+1} = weight_V(i,j);
    end
end
xlswrite('weightV.xlsx',weightV_list,1); %namefile, data, sheet

%WRITE INTO EXCEL WEIGHT W
weightW_list = {'output/hidden(weight W)', '''1'}; %for header
for i=1:num_neuronZ
    weightW_list{1,i+2}=strcat('Z',num2str(i));
end
for i=1:num_neuronY
    weightW_list{i+1,1}=strcat('Y',num2str(i));
    for j=1:num_neuronZ+1
        weightW_list{i+1,j+1} = weight_W(i,j);
    end
end
xlswrite('weightW.xlsx',weightW_list,1);
