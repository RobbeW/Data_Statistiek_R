We kunnen R ook gemakkelijk een oneerlijke dobbelsteen laten simuleren. Hieronder zie je een voorbeeld van 100 worpen van een dobbelsteen waarbij de kans om een zes te gooien groter werd gemaakt door het andere vlak zwaarder te maken. De kans om een één te gooien wordt dus minder hoog.

```R
sample(1:6, size = 100, replace = TRUE, prob = c(1 / 12, 1 / 6, 1 /6 , 1 / 6, 1 / 6, 1 / 4))
```

## Opgave
Simuleer 1000 worpen van een **oneerlijke** dobbelsteen waarbij de kans om een zes te gooien 30% is en de kans om een vijf te gooien 25%. De kans om een één of een twee te gooien wordt dus kleiner. Hoe klein?

Sla de 1000 worpen op in een variabele `worp`. **Bereken** nadien het gemiddelde van deze simulatie en **verifieer** dat deze dobbelsteen gemiddeld gesproken inderdaad hogere waarden werpt.

![Een worp van dobbelstenen.](media/riho-kroll.jpg "Foto door Riho Kroll op Unsplash"){:data-caption="Een worp van dobbelstenen." width="45%"}

