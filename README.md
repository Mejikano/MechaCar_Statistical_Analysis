# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    *  Based on a 0.05 of significance lever the intercept and vehicle_length, ground_clearance variables rejected Ho (null hypothesis) therefore they do not provide random variance to mpg values.
- Is the slope of the linear model considered to be zero? Why or why not?
    * No, slope is not considered 0 as the regression 5.35e-11 p-value rejected Ho (null hypothesis) 
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    * This multilinear regression has a R squared of 0.7149, ~71.5% will effectively predict the mpg which is much better than chance but not ideal. 

As reference above answers were determined based on the following R Linear regression results and statistics:

```
mpg_lm<-lm(mpg~vehicle_length+
             vehicle_weight+
             spoiler_angle+
             ground_clearance+
             AWD, mpg_df)
```

[MPG linear regression](https://github.com/Mejikano/MechaCar_Statistical_Analysis/blob/main/static/Resources/Deliverable1_Linear_regression.png)

## Summary Statistics on Suspension Coils


Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

* Looking at the total summary (variance accross all manufacturing lots) the suspension coils do not exceed 100 threshold
 
[Manufacturing Total Summary](https://github.com/Mejikano/MechaCar_Statistical_Analysis/blob/main/static/Resources/Deliverable2_coil_totalsummary.png)

* However analyzing each lot individually is quite evident that lot 3 does not meet the design specifications, providing 170+ variance which is way over of the 100 threshold

[Manufacturing Lots Summary](https://github.com/Mejikano/MechaCar_Statistical_Analysis/blob/main/static/Resources/Deliverable2_coil_lotsummary.png)

## T-Tests on Suspension Coils

Hypothesis.

- H0 : There is no statistical difference between the observed sample mean and its presumed population mean.
- Ha : There is a statistical difference between the observed sample mean and its presumed population mean.

### All Manufacturing vs population: 

> Null hypthesis was not rejected, there´s no statistical difference between all MechaCar prototype lots and the manufactured population (mu=1500)

[Total Manufacturing](https://github.com/Mejikano/MechaCar_Statistical_Analysis/blob/main/static/Resources/All_Ttest.png)

### Lot 1 Manufacturing vs population: 

> Null hypthesis was not rejected, there´s no statistical difference between MechaCar prototype lot 1 and the manufactured population (mu=1500)

[Lot 1 Manufacturing](https://github.com/Mejikano/MechaCar_Statistical_Analysis/blob/main/static/Resources/Lot1_Ttest.png)

### Lot 2 Manufacturing vs population: 

> Null hypthesis was not rejected, there´s no statistical difference between MechaCar prototype lot 2 and the manufactured population (mu=1500)

[Lot 2 Manufacturing](https://github.com/Mejikano/MechaCar_Statistical_Analysis/blob/main/static/Resources/Lot2_Ttest.png)

### Lot 3 Manufacturing vs population: 

> Null hypthesis was rejected, there is statistical difference between MechaCar prototype lot 3 and the manufactured population (mu=1500). This lot suggest to be suffering from production problems as their manufacture is not similar as the rest of manufactured vehicles (AutosRUs population) 

[Lot 3 Manufacturing](https://github.com/Mejikano/MechaCar_Statistical_Analysis/blob/main/static/Resources/Lot3_Ttest.png)


## Study Design: MechaCar vs Competition

- What metric or metrics are you going to test? 
    * MechaCar model MPG performance is not significally impacted by the drive type (AWD vs non-AWD mode) but competitors vehicles are; meaning that customers can select any drive mode without compromising fuel efficiency.  
- What is the null hypothesis or alternative hypothesis?
    * Ho: There is no difference in MPG distribution between MechaCar and competitors when AWD mode is on
    * Ha:There is difference in MPG distribution between MechaCar and competitors when AWD mode is on

- What statistical test would you use to test the hypothesis? And why?
    * One Sample T-test; because AWD is a Dichotomous independent variable and MPG is a continuous dependent variable. This stadistical test needs to compare MechaCar mean vs the population distributiion (All competitors)
 
- What data is needed to run the statistical test?
    * All vehicle manufacturers models with MPG distributions when AWD is on and when AWD is off.
        in other words for each model:
            - AWD On: MPG - city, MPG-highway 
            - AWD Off: MPG - city, MPG-highway 
            - AWD Not available: MPG - city, MPG-highway 
