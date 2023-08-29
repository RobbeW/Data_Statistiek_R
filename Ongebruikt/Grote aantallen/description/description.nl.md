Wet van de grote aantallen in de praktijk.


Een voorbeeld

```R
y <- c()
for (x in 1:500) {
  dobbel <- sample(1:6, size = x, replace = TRUE)
  dobbel_mean <- mean(dobbel)
  y <- append(y, c(dobbel_mean))
}

plot(1:500, y, ylim = c(0, 6),
     xlab = "Aantal worpen",
     ylab = "Gemiddeld aantal ogen")
```


## Opgave
Doe hetzelfde maar voor een D8 dobbelsteen die bovendien verzwaard werd langs de kant van de acht. De tegenoverliggende zijde, één, werd verzwaard zodat de kans om een 8 te gooien 20% is.

Welke waarden verwachten we te gooien met deze D8 dobbelsteen?