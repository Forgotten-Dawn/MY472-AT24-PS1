# Load dataset mtcars
data(mtcars)

# Look first few rows to check whether it is tidy
head(mtcars)

# It is tidy because Each column is a variable (such as mpg, cyl, disp, etc.); Each row represents an observation (e.g., each car); Each cell is a specific value.

# Change it into wide fomat to make it untidy
library(tidyr)

mtcars_wide <- mtcars %>%
  pivot_wider(names_from = cyl, values_from = mpg, names_prefix = "cyl_")

# Look the first few rows after change
head(mtcars_wide)

#Discussion
The raw data set mtcars is tidy because it follows the definition of tidy data. <br>
i.e, Each column is a variable (such as mpg, cyl, disp, etc.); Each row represents an observation (e.g., each car); Each cell is a specific value. <br>
We created a non-neat version by converting the data to a wide format because the same variables are spread across multiple columns instead of being kept in one column. <br>

  