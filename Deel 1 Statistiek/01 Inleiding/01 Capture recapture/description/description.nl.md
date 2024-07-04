Stel dat men de hoeveelheid berggeiten wil *schatten* in een natuurgebied. Een methode die daarvoor gebruikt wordt heet **capture recapture**. Eerst worden t dieren gevangen en gemarkeerd. Deze dieren worden nadien vrijgelaten en een eind later trekt men opnieuw op pad en vangt men n dieren. Er zullen waarschijnlijk een aantal gemarkeerde dieren tussenzitten, men noemt dit aantal s. 

Je kan nu het aantal dieren N in het natuurgebied gaan schatten met behulp van onderstaande formule. Men gaat er immers vanuit dat de verhouding ongeveer bewaard blijft.

$$
    \mathsf{\dfrac{N}{t} = \dfrac{n}{s}}
$$

![Enkele berggeiten](media/medena-rosa.jpg "Foto door Medena Rosa op Unsplash"){:data-caption="Enkele berggeiten" width="45%"}

## Gegeven
Het onderstaande programma bevat een voorbeeld uit het Yellowstone National Park. Er werden een eerste keer 32 berggeiten gevangen, een maand later vangt men 75 berggeiten waarvan er 10 waren die een markering hadden.

Om deze gegevens te gebruiken binnen R moeten we ze toekennen aan variabelen. 
Net zoals in andere programmeertalen zoals **Python** of **JavaScript** hebben variabelen volgende kenmerken: 
* een naam;
* een datatype. 

Merk op dat R echter een andere **toekenningsoperator** gebruikt dan Python!

In Python zou je noteren:
```python
t = 32
```

Terwijl men in R noteert:
```R
t <- 32
```

## Gevraagd

Bepaal nu met bovenstaande formule (vorm deze eerst correct om) een **schatting** voor $$N$$. Het volstaat om je berekening te noteren, of je kan - net zoals in Python - `print()` gebruiken.

