# Verkeersveiligheid in België

![Een auto-ongeval.](media/will-creswick.jpg "Foto door Will Creswick op Unsplash."){:data-caption="Een auto-ongeval." width="40%"}

## Gegeven

Wordt autorijden in België steeds veiliger? Het <a href="https://statbel.fgov.be/nl/themas/mobiliteit/verkeer/verkeersongevallen" target="_blank">aantal verkeersdoden daalt</a> al een aantal jaren. 
In 2013 verloren slechts 700 mensen het leven. Na dat jaar begonnen de cijfers te stijgen. 
In 2023 zullen ongeveer 800 mensen sterven in het verkeer. Maar, meer auto's genereren meer verkeerskilometers in 2023 dan in 2013. 
De overheid beweert dat het `aantal gereden kilometers` in 2013 80 miljard was. In 2023 is dat aantal gestegen naar 100 miljard gereden kilometers. 

Verkeersrapporten gebruiken de grootheid **overlijdensrisico** om hier een waarde aan toe te kennen.

$$
 \text{overlijdensrisico} = \dfrac{\text{aantal doden}}{\text{aantal miljoen gereden kilometers}}
$$


{: .callout.callout-info}
>## Gevraagd
>
>* Vergelijk de cijfers voor 2013 en 2023.
>* Wordt autorijden in België steeds gevaarlijker?
>* Schematiseer jouw oefening eerst op papier;
>* Gebruik `aantal_doden` en `aantal_gereden_km` in jouw oplossing;
>* Gebruik `risico` als `variabele` of `object` om jouw resultaat in op te slaan;
>* Schrijf daarna jouw **R-code**;
>* Dien jouw code daarna in via Dodona om te controleren. 

## Invoer

```R
aantal_doden <- c(A, B)
aantal_gereden_km <- c(X, Y)
```

## Uitvoer

* Als resultaat krijg je twee numerieke waarden, gescheiden met een spatie. De eerste waarde is het risico voor 2013, de tweede waarde voor 2023.
* Bijvoorbeeld:
```
0.2364 0.2187
```
* Bewaar deze waarden in de `variabele` of `object` genaamd `risico`. 
* Vergeet niet om te **debuggen** en eventuele fouten op te lossen.
