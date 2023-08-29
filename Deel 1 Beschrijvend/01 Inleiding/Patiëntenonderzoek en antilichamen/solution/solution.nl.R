# Aanmaken variabelen
namen <- c("Alice", "Bob", "Karen", "David", "Eva")
antistoffen_basis <- c(3705, 3601, 4100, 2574, 3910)
antistoffen_booster <- c(22293, 14571, 25415, 18971, 38600)

# Data frame aanmaken
coviddata <- data.frame("namen" = namen,
                        "basis" = antistoffen_basis,
                        "booster" = antistoffen_booster)

# Bereken de toename
toenames <- coviddata$booster - coviddata$basis