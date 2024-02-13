In de vorige oefening bepaalde je de **mediaan** als volgt:

```R
remweg <- c(28.2, 28.5 ,29.3 ,29.6 ,29.9, 30.2, 30.6, 30.6, 30.6, 30.7)
n <- length(remweg)
if (n %% 2 != 0) { # oneven aantal waarnemingen
  mediaan <- remweg[(n + 1) / 2]
} else { # even aantal waarnemingen
  a <- remweg[n / 2]
  b <- remweg[n / 2 + 1]
  mediaan <- (a + b) / 2
}
```

Het spreekt voor zich dat er in R hiervoor een functie ingebakken zit, namelijk `median()`. De code kan dus sterk vereenvoudigd worden:

```R
remweg <- c(28.2, 28.5 ,29.3 ,29.6 ,29.9, 30.2, 30.6, 30.6, 30.6, 30.7)
mediaan <- median( remweg )
# Superkort!
```

## Gegeven

Herneem je oplossing van de vorige oefening.

## Gevraagd

Vereenvoudig deze met behulp van de `median()` functie. Sla het resultaat op in de variabele `mediaan_remweg`.