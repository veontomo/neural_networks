clear;
load data.mat;


scale = 1;


%% Set up reduced data
testDataSize = size(data.testData);
trainDataSize = size(data.trainData);
validDataSize = size(data.validData);

workingData.testData = data.testData(:, 1: testDataSize(2) * scale);
workingData.trainData = data.trainData(:, 1: trainDataSize(2) * scale);
workingData.validData = data.validData(:, 1: validDataSize(2) * scale);
workingData.vocab = data.vocab;



%% Question 2
printf("\nQuestion 2\n")
model_2 = train(10, 0.1, 0.9, 50, 200, 0.01, 100, workingData);

%% Question 3
printf("\nQuestion 3\n")
model_3 = train(10, 100, 0.9, 50, 200, 0.01, 100, workingData);

%% Question 4
printf("\nQuestion 4\n")
model_4 = train(10, 0, 0.9, 50, 200, 0.0, 100, workingData);


%% Queston 5
printf("\nQuestion 5\n")
modelA_5 = train(1, 0.001, 0.5, 50, 200, 0.01, 100, workingData);
modelB_5 = train(1, 0.1,   0.5, 50, 200, 0.01, 100, workingData);
modelC_5 = train(1, 10.0,  0.5, 50, 200, 0.01, 100, workingData);

%% Queston 6
printf("\nQuestion 6\n")
modelA_6 = train(10, 0.001, 0.5, 50, 200, 0.01, 100, workingData);
modelB_6 = train(10, 0.1,   0.5, 50, 200, 0.01, 100, workingData);
modelC_6 = train(10, 10.0,  0.5, 50, 200, 0.01, 100, workingData);

%% Queston 7, 8
printf("\nQuestions 7 and 8\n")
modelA_7 = train(10, 0.1, 0.9, 5, 100, 0.01, 100, workingData);
modelB_7 = train(10, 0.1, 0.9, 50, 10, 0.01, 100, workingData);
modelC_7 = train(10, 0.1, 0.9, 50, 200, 0.01, 100, workingData);
modelD_7 = train(10, 0.1, 0.9, 100, 5, 0.01, 100, workingData);

%% Queston 9
printf("\nQuestion 9\n")
modelA_9 = train(5, 0.1, 0.0, 50, 200, 0.01, 100, workingData);
modelB_9 = train(5, 0.1, 0.5, 50, 200, 0.01, 100, workingData);
modelC_9 = train(5, 0.1, 0.9, 50, 200, 0.01, 100, workingData);

%% Queston 10
printf("\nQuestion 10\n")
word = "day";
n = 10;
printf("%d closest words to %s\n", n, word)
display_nearest_words(word, model_2, n)

%% Question 11
printf("\nQuestion 11\n")
word1 = 'percent';
word2 = 'dr.';
dist = word_distance(word1, word2, model_2)
printf("Distance between %s and %s is %.8f\n", word1, word2, dist)


%% Question 12
printf("\nQuestion 12\n")
word1 = 'he';
word2 = 'she';
dist = word_distance(word1, word2, model_2)
printf("Distance between %s and %s is %.8f\n", word1, word2, dist)