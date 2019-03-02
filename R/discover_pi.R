NO_of_points <- 10000
r <- 10 # radius of circle
x <- seq(-r, r, length.out = NO_of_points) # x-coordinates
y <- sqrt(r**2 - x**2) # y-coordinates

L <- 0 # L is for the half of the circumference
A_half <- 0 # A_half is for the half of the area

for(i in 2:length(x))
{d <- sqrt((x[i] - x[i-1])** 2 + (y[i] - y[i-1])**2 ) 
 L <- L + d
 s <- (d + 2*r) / 2
 # using Heron's formula
 A_half <- A_half + sqrt(s * (s - r) * (s - r) * (s - d)) 
}

(L/r)
(2*A_half/r**2)
