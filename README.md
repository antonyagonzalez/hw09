# hw09: Working with regression coefficients

The following package is an excerpt of a larger package I am working on focusing on
  making regression coefficients easier to deal with. Looking over regression output
  and trying to extract what you need from it can be quite the headache, especially if
  you have many different models to deal with. This mini package will extract betas
  and their relevant statistics from 3 way interaction regression models to get
  information for a 2 way interaction between your 1st and 2nd predictor (interact12),
  information for the 3 way interaction (interact3), and will meta-analyze standardized
  regression coefficients that you input.
  
## Extract information for a three-way interaction using interact3()

NOTE: This function will only work if you have 3 predictors or more in your model, and only up to a three-way interaction.
Four-way interactions are a terrible idea anyway, don't do them.

## Extract information for an interaction between predictors 1 and 2 using interact12()

NOTE: This function will only work if you have 3 predictors or more in your model, and only up to a three-way interaction.

## Meta-analyzing standard regression coefficients

The third (and final, for now) function in this package meta-analyzes standardized regression coefficients that you input by hand.

**See the vignette and package descriptions for more details and examples.**
