
#Choose a dataset
mtcars <- mtcars

head(mtcars)
str(mtcars)

#Test generic functions
summary(mtcars)

plot(mtcars)

print(mtcars)

mean(mtcars)

tail(mtcars)

#S3

s3_obj <- list(car = "Mazda RX4", cyl = 6, disp = 160.0, hp = 110, drat = 3.9, wt = 2.620, qsec = 16.46, vs=0, am = 1, gear = 4, carb = 4)
class(s3_obj) <- "car_s3"

str(s3_obj)
print(s3_obj)
head(s3_obj)
tail(s3_obj)

#S4

setClass("car_s4",
         slots = c(model = "character", cyl = "numeric", disp = "numeric", 
        hp = "numeric", drat = "numeric" , wt = "numeric", qsec = "numeric", 
        vs = "numeric", am = "numeric", gear = "numeric", carb = "numeric"))
car_obj <- new("car_s4", model = "Mazda RX4", cyl = 6, disp = 160.0, hp = 110, drat = 3.9, wt = 2.620, qsec = 16.46, vs =0, am=1, gear = 4, carb=4)

print(car_obj)
print(car_obj@model)
ls()
