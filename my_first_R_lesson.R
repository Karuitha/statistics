## Hello

3 + 2
3 * 5
4 * 8

## In R you apply functions to objects 
## e.g square root is a function written as sqrt.
sqrt(9)

### Assigning a value to an object
age <- 15
age + 1
age          ^         2
AGE ### R is case sensitive. It does care about spacing. 
age

## Assignment operator(<- or =)
## Assign number 55 to variable z
x = 100
z <- 55
z
z*100

### Assign value of 70 to variable w (don't use =)
w <-            70
w

### Creating a vector with the c function; c is for combine. 
age <- c(14, 12, 13.5, 16, 10, 15.4)
age

### calculating the mean
mean(age)

### Calculating the median
median(age)

### unfortunately mode cannot be comuted directly in R
### Mode is the most frequently occuring observation.
## e.g. 3, 3, 5, 7, 8 - here 3 is the mode. 

## 3, 3, 5, 5, 7, 9 - Here we have 2 modes, 3 & 5. Bimodal. 

## 2, 2, 2, 3, 5, 3, 3, 5, 5, 7 _ in this case we have 3 modes, 2, 3, & 5
## The distribution is multi-modal. 

# Comments
# comment

### You are given the following vector of heights for 7 students in cm
### 160, 150, 150, 180, 175, 140, 168
### Create a vector of the heights using the c function
### Assign this to heights

height <- c(160, 150, 150, 180, 175, 140, 168)

## Compute the mean, median 
mean(height)
median(height)
sd(height)
var(height)

