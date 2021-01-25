%this function aims to calculate MSE (Mean Squared Error) of the classifier
%MSE could be considered as the "loss" value
function MSE = calculate_MSE(Y_output, datatarget)
    num_neuronY = size(Y_output,2);
    total_data = size(Y_output,1);
    sigmaMSE=0;
    for iData=1:total_data
       Error=0;
       for j=1:num_neuronY
          Error = Error+(datatarget(iData,j)-Y_output(iData,j))^2;
       end
       MSE_each_data(iData) = Error/num_neuronY;
       sigmaMSE = sigmaMSE + MSE_each_data(iData);
    end
    MSE = sigmaMSE/total_data;