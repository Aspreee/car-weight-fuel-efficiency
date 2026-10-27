# Car Weight and Fuel Efficiency

Can a car's weight help us understand its fuel efficiency? This beginner-friendly, AI-assisted learning project uses R to explore the relationship with a scatterplot and a simple linear regression.

![Scatterplot of car weight and miles per gallon with a downward-sloping regression line](figures/weight_vs_mpg.svg)

## The data

The analysis uses R's built-in `mtcars` dataset, which contains information about **32 car models from 1973–1974**. The two variables in this project are:

- **`wt`**: car weight, measured in thousands of pounds
- **`mpg`**: fuel efficiency, measured in miles per US gallon

Source: [R documentation for the mtcars dataset](https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html).

## Analysis steps

1. Looked at the data and made a scatterplot.
2. Fit a linear regression model using `lm(mpg ~ wt)` in R.
3. Interpreted the slope and R-squared.

## Results

The fitted line is approximately:

**Predicted mpg = 37.29 − 5.34 × weight**

Weight is measured in **1,000 pounds**. In this dataset, a car weighing 1,000 pounds more is associated with about **5.34 fewer miles per gallon**, according to the fitted line. The relationship is negative: the heavier cars in this dataset tended to get fewer miles per gallon.

The model's **R² is about 0.753**. That means the fitted linear relationship with weight explains about 75.3% of the variation in mpg among these 32 cars. It does not mean that the model is 75.3% accurate for every prediction.

## Limitations

The dataset is small and describes cars from the 1970s, so the results should not be assumed to apply to modern cars. This is observational data: other factors, such as engine characteristics, may also affect fuel efficiency. The association alone does not prove that weight caused the difference.

## Run the project

You only need R; no extra packages are required. In RStudio, open `analysis.R`, choose **Session → Set Working Directory → To Source File Location**, and click **Source**. Alternatively, run the following from this project's folder:

```r
source("analysis.R")
```

The script prints the regression output and saves the scatterplot to `figures/weight_vs_mpg.svg`.

## Files

- `analysis.R` — data exploration, regression, and plot
- `figures/weight_vs_mpg.svg` — saved chart
