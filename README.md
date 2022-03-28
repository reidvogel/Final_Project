# Final_Project


## Overview


#### About the dataset
The topic our team chose deals with the salary ranges for various Data Scientist positions. We chose this topic because all 4 of our team members are either working in the data science field or potentially transfering to the field. Hopefully, this data analysis will help our team, and others, find answers that will determine the next steps they should take in their data science career. Over the next few weeks our team will be analyzing salaries and how salaries are impacted by a variety of skillsets, locations, degrees, and more. The original dataset being used in our project was collected by Glassdoor and plushed to Kaggle. In addition to our original dataset, we have added a dataset called "data science and STEM Salaries". 

## Team Roles
- Square: Reid Vogel will be responsible for our teams repository.
- Triangle: Fritz is responsible for the machine learning model. 
- Circle: Megan Willard is responsible for creating and maintaining our teams databases. 
- X: Gabe Barletta is responsible for deciding which technologies to use for each step. 


## Communication Protocols
Our team's main source of communication is through slack. We have scheduled zoom meetings every Tuesday and Thursday from 7pm to 9pm eastern. We schedule additional meetings through our slack group message.

## Cleaning the dataset

## Database development

Circle_Segment2
Both data sets was loaded into SQL using sqlAlchamey. 
A primary key field was added to both sets and the 4 columns in common were combined using a Union statement. The corresponding data was combined using a Left Join. 

SQLAlchemy was then used to load two data sets back into a data frame in a jupyter notebook. One that just had the four columns in common and 1 that had all of the data. 


 main
## Model Building overview

First, we transformed the categorical variables into dummy variables. Then we  split the data into train and tests sets with a test size of 20% using sklearn.model train_test_split.

I tried three different models and evaluated them using Mean Absolute Error. I chose MAE because it is relatively easy to interpret and outliers aren’t particularly bad in for these type of models.

I tried three different models:

Multiple Linear Regression – Baseline for the model

Lasso Regression – Because of the sparse data from the many categorical variables, I thought a normalized regression like lasso would be effective.

Random Forest – Again, wbecause of the sparsity associated with the data, I thought that this would be a good fit.

#### Preliminary data

## Model performance

* Multiple Linear Regression: MAE = -42902504173.30
* Lasso Regression: MAE = -19.68
* Random Forest: MAE = -13.62

## Model Acuracy 
* Multiple Linear Regression: = 46%
* Lasso Regression: = 
* Random Forest:  = 76%

## Dashboard development
Our Dashboard currently consists of 4 different visualizations. We will also be creating an interactive heatmap to show the relationship between salaries and the location of the company. Refer to the following tableau links to use the visualizations. 
- Salaries Per Position bar chart: https://public.tableau.com/app/profile/reid.vogel/viz/Data_Salaries/SalariesPerPosition

- Count of Position Hires bar chart: https://public.tableau.com/app/profile/reid.vogel/viz/CountofHires/CountofPositionHires?publish=yes

- Highest Paying Companies bar chart:
https://public.tableau.com/app/profile/reid.vogel/viz/highestpayingcompanies/HighestPayingCompanies?publish=yes

- Count of Positions pie chart: https://public.tableau.com/app/profile/reid.vogel/viz/piechartofpositions/PieChartofPosition?publish=yes


## Presentation
Our presentation is available through the following link:
https://docs.google.com/presentation/d/1fSWGhl2xTozmtblOBTLWxI3q0nlmSoqF4lLhkz6ujpQ/edit?usp=sharing

Our story board is available through the following link:
https://docs.google.com/presentation/d/1Qyj2e5KKToX0qI48rrzPFEZkz3QcQ_HNPzj0oSZePhg/edit#slide=id.g11dccfb9e8f_0_10
