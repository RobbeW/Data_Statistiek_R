## Gegeven
Het basaal metabolisme of rustmetabolisme is de minimale hoeveelheid energie die een lichaam in rust nodig heeft om vitale functies zoals ademen of de hartslag in stand te houden. Wij berekenen hier het basaal metabolisme van een aantal vrouwelijke atleten.

![Atletiekwedstrijd bij de Vrouwen.](media/atletiek_vrouwen.jpg "Atletiekwedstrijd bij de Vrouwen."){:data-caption="Atletiekwedstrijd bij de Vrouwen." width="40%"}

De formule om het basaal metabolisme (bij vrouwen) te berekenen is als volgt:

$$
    \mathsf{\text{metabolisme} = 10 \cdot \text{lichaamsgewicht}_kg + 6.25 \cdot \text{lengte}_cm - 5 \cdot \text{leeftijd}_jaar - 161}
$$

Met `head(data)` krijgen we een eerste blik op een dataset met succesvolle olympische atleten.

```
                       name  sex  age  height_m weight_pnd
1                 A Dijiang    M   24      1.80     176.32
2                  A Lamusi    M   23      1.70     132.24
3  Christine Jacoba Aaftink    F   21      1.85    180.728
4           Per Knut Aaland    M   31      1.88      165.3
5              John Aalberg    M   31      1.83    158.688
```

## Gevraagd

Bereken het basaal metabolisme van de vrouwelijke atleten in deze dataset.

- Een aantal variabelen staan in het dataset in de verkeerde eenheid. Maak een variabele `gewicht` en een variabele `lengte` om deze om te rekenen naar de juiste eenheid. Als tip: 1 kg komt overeen met (ongeveer) 2.204 pond.

- Maak een booleaanse vector `vrouwen`, die bepaalt welke atleten van het vrouwelijke geslacht zijn.

- Bereken, aan de hand van de gegeven formule, de variabele `basaal_metabolisme_vrouwen` **voor de vrouwen**.

- Welke vrouwelijke atleet staat dan in het midden? Wie is, met andere woorden, de mediaan? Sla dit op in de variabele `mediaan_metabolisme`
