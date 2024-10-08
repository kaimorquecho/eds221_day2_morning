dogs <- c("teddy", "khora","waffle", "banjo")
typeof(dogs)
class(dogs)


weights <- c(50, 55, 25, 35)
typeof(weights)
class(weights)


dog_age <- c(5L, 6L, 1L, 7L)
typeof(dog_age)
class(dog_age)


is.numeric(dog_age)


dog_info <- c("teddy", 50, 5L)
# here ^ we made a vector. we asked it to concatenate meaning merge

dog_info
# R has turned "teddy" and 50 and 5L as character strings to be the same as "teddy". R will default to most generic data type


typeof(dog_info)
is.character(dog_info)


# we can have different data types and structure them 

dog_food <- c(teddy = "purina",
              khora = "alpo",
              waffle = "fancy feast",
              banjo = "blue diamond")
dog_food[2]
dog_food["khora"]


cars <- c("red","orange","white", "blue", "silver", "black")
cars [5]
cars [2:4]


i <- 3
cars[i]



i <- seq(1:3)
i
cars[i]

cars[3] <- "BURRITOS!"
cars

fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), ncol = 2, nrow = 2, byrow = FALSE)
fish_size

typeof(fish_size)
class(fish_size)


dog_walk <- matrix(c("teddy", 5, "khora", 10), ncol = 2, nrow = 2, byrow= FALSE)




whale_travel <- matrix(data = c(31.8, 1348, 46.9, 1587), ncol = 2, nrow = 2, byrow = FALSE)
whale_travel
whale_travel [1]
whale_travel [1:2,2]
whale_travel[3]


urchins <- list("blue", c(1,2,3), c("a cat", "a dog", 5L))
urchins[[1]]                                                                                         
tacos <- list(topping = c("onion" , "cilantro", "guacamole"), fillings = c("beans", "meat", "veggies"))

tacos[1]
tacos$fillings[1]
tacos$topping[1]         


fruit <-data.frame(type = c("apple", "banana", "peach"),
           mass = c(130, 195, 250))

fruit

class(fruit)

fruit[3,1]
fruit[2, 1] <- "pineapple"
fruit$type
fruit$mass


