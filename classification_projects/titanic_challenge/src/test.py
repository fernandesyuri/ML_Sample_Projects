import pickle
import os
from pipeline import prepare_submission
from sklearn.tree import DecisionTreeClassifier

os.chdir('../model')

model_name = os.listdir('.')[0]

model: DecisionTreeClassifier = pickle.load(open(model_name, 'rb'))

os.chdir('../data')

submission_df = prepare_submission(model, os.getcwd() + '/test.csv', os.getcwd() + '/submission.csv')

print(submission_df.head(10))