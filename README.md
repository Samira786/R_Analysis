# R_Analysis

### Project Overview
We are analyzing a new vehicle prototype using R. Some of the analysis includes:<br />
-multiple linear regression related to MPG<br />
-suspension soil and variance<br />
-t-tests<br />
-horsepower and performance - own study<br />

Data Source: MechaCar_mpg.csv, Suspension_Coil.csv<br />

Software: R<br />

### MPG Regression

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Based on the results, vehicle length and ground clearance are statistically unlikely to provide random amounts of variance due to the significant impact on mpg. The slope of the linear model is very close to zero because the p-value is 5.35e-11, which is smaller than the 0.05. This linear model predicts mpg of prototypes effectively by 71% because the r-squared value is 0.71.

### Suspension Coil

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. Does the current manufacturing data meet this design specification? Why or why not?

Lot size 3 exceeds 100 pounds per inch as the variance of Lot 3 is 170.

### Suspension Coil T-Test

Interpretation and findings for the t-test results

P-value of Lot 1 - 1
P-value of Lot 2 - 0.6072
P-value of Lot 3 - 0.04168

Mean value of Lot 1 - 1500
Mean value of Lot 2 - 1500.2
Mean value of Lot 3 - 1496.14

Based on the output for Lot 3, the mean of the suspension coil’s pound-per-inch is  1496.14. 95 percent confidence interval indicated that the mean from Lot 3 can be from 1492.431 to 1499.849. The p-value is 0.04168 indicating the mean pounds per inch was 1500. The Lot 3 p-value is less than 0.05.

The probability of selecting a sample with a mean equal to this one would be approximately 4%.

### Conclusion - the null hypothesis is rejected.

Own Study

Is Performance of the car determined by MPG and Horsepower?
The null hypothesis - horsepower has no effect on mpg
Alternate hypothesis - horsepower has effect on mpg

Conclusion - the null hypothesis is rejected
