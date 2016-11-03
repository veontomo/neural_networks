clear;
load data.mat;


scale = 0.01;


%% Set up reduced data
testDataSize = size(data.testData);
trainDataSize = size(data.trainData);
validDataSize = size(data.validData);

workingData.testData = data.testData(:, 1: testDataSize(2) * scale);
workingData.trainData = data.trainData(:, 1: trainDataSize(2) * scale);
workingData.validData = data.validData(:, 1: validDataSize(2) * scale);
workingData.vocab = data.vocab;



%% Question 2
model_2 = train(10, 0.1, 0.9, 50, 200, 0.01, 100, workingData);

%% Question 3
%model_3 = train(10, 100, 0.9, 50, 200, 0.01, 100, workingData)

%% Queston 5
%modelA_5 = train(1, 0.001, 0.5, 50, 200, 0.01, 100, workingData);
%modelB_5 = train(1, 0.1,   0.5, 50, 200, 0.01, 100, workingData);
%modelC_5 = train(1, 10.0,  0.5, 50, 200, 0.01, 100, workingData);

%% Queston 6
%modelA_6 = train(10, 0.001, 0.5, 50, 200, 0.01, 100, workingData);
%modelB_6 = train(10, 0.1,   0.5, 50, 200, 0.01, 100, workingData);
%modelC_6 = train(10, 10.0,  0.5, 50, 200, 0.01, 100, workingData);

%% Queston 7, 8
%modelA_7 = train(10, 0.1, 0.9, 5, 100, 0.01, 100, workingData);
%modelB_7 = train(10, 0.1, 0.9, 50, 10, 0.01, 100, workingData);
%modelC_7 = train(10, 0.1, 0.9, 50, 200, 0.01, 100, workingData);
%modelD_7 = train(10, 0.1, 0.9, 100, 5, 0.01, 100, workingData);

%% Queston 9
%modelA_9 = train(5, 0.1, 0.0, 50, 200, 0.01, 100, workingData);
%modelB_9 = train(5, 0.1, 0.5, 50, 200, 0.01, 100, workingData);
%modelC_9 = train(5, 0.1, 0.9, 50, 200, 0.01, 100, workingData);

%% Queston 10
display_nearest_words("could", model_2, 10)

%% Question 11
word_distance('percent', 'dr.', model_2)

