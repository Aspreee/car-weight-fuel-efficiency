# How is car weight related to fuel efficiency?
# This project uses mtcars, a dataset included with R.

# 1. Explore the data
data("mtcars", package = "datasets")
cars <- mtcars

cat("Number of cars:", nrow(cars), "\n\n")
print(head(cars[, c("wt", "mpg")]))

# wt is measured in 1,000 pounds; mpg is miles per US gallon.

# 2. Fit a simple linear regression
model <- lm(mpg ~ wt, data = cars)
cat("\nLinear regression results:\n")
print(summary(model))

# 3. Save a scatterplot with the fitted regression line
dir.create("figures", showWarnings = FALSE)
svg("figures/weight_vs_mpg.svg", width = 9, height = 6, bg = "white")

par(mar = c(5, 5, 4.5, 2), bty = "n", las = 1, family = "sans")
plot(cars$wt, cars$mpg,
     type = "n", xlim = c(1, 5.8), ylim = c(8, 36),
     xlab = "Car weight (1,000 pounds)",
     ylab = "Fuel efficiency (miles per gallon)",
     main = "Car weight and fuel efficiency",
     cex.main = 1.25, col.main = "#173A58")
abline(h = seq(10, 35, by = 5), col = "#E9F0F4", lwd = 1)
abline(model, col = "#174E7A", lwd = 2.5)
points(cars$wt, cars$mpg, pch = 21, bg = "#53A3C9",
       col = "white", cex = 1.5, lwd = 0.8)
legend("topright", legend = "Fitted regression line", lty = 1,
       col = "#174E7A", lwd = 2.5, bty = "n", cex = 0.85)
dev.off()

cat("\nPlot saved to figures/weight_vs_mpg.svg\n")
