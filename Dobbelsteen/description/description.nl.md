R is zeer goed in het simuleren van experimenten. Hier volgt een voorbeeld van zo een simulatie.

We weten dat bij het opgooien van één eerlijke dobbelsteen de kans op elke waarde één zesde is. Dit kan je simuleren in R via:

```R
sample(1:6, size = 1)
```

Als je dit nog een aantal keer uitvoert zal je merken dat je steeds een andere worp krijgt. Door de code wat aan te passen kunnen we dit experiment nu gemakkelijk 100 keer laten uitvoeren. Met andere woorden, 100 worpen van een *eerlijke* dobbelsteen.

```R
sample(1:6, size = 100, replace = TRUE)
```

Het argument `replace = TRUE` betekent dat we als het ware de dobbelsteen telkens opnieuw terugleggen.

## Opgave
In het spel Dungeons & Dragons wordt met een D20 dobbelsteen gespeeld. Dit is een icosaëder oftewel een regelmatig twintigvlak.

![Enkele dobbelstenen uit Dungeons & Dragons](media/lucas-santos.jpg "Foto door Lucas Santos op Unsplash"){:data-caption="Enkele dobbelstenen uit Dungeons & Dragons" width="45%"}

Laat nu R duizend worpen van een *eerlijke* D20 dobbelsteen simuleren. Sla het resultaat op in een variabele genaamd `d20`. Laat R nadien het gemiddelde van deze variabele berekenen.