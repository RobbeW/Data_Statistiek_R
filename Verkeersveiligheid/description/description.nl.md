# Verkeersveiligheid in België

Wordt autorijden in België steeds veiliger? Het <a href="https://statbel.fgov.be/nl/themas/mobiliteit/verkeer/verkeersongevallen" target="_blank">aantal verkeersdoden daalt</a> al een aantal jaren. 

![Een auto-ongeval.](media/will-creswick.jpg "Foto door Will Creswick op Unsplash."){:data-caption="Een auto-ongeval." width="40%"}

Anderszijds is het ook zo dat de bevolkingsgrootte elk jaar wijzigt, net als het aantal personen met een rijbewijs, of de drukte op de Belgische wegen. Hoe kan men het dalende aantal verkeersdoden beter gaan interpreteren?

## Gegeven
Volgens <a href="https://bestat.statbel.fgov.be/bestat/crosstable.xhtml?view=2386c092-91a3-4a4e-8533-149411d4858a" target="_blank">Statbel</a> waren er in 2015 maar liefst 716 verkeersdoden. In 2022 daalde dat aantal naar 510. Maar, meer auto's genereren meer verkeerskilometers in 2023 dan in 2013. 
De overheid beweert dat in 2015 het **aantal gereden kilometers** 84,2 miljard was. In 2022 is dat aantal gestegen naar 92,9 miljard gereden kilometers. 

Verkeersrapporten gebruiken de grootheid **overlijdensrisico** om hier een waarde aan toe te kennen.

$$
 \text{overlijdensrisico} = \dfrac{\text{aantal doden}}{\text{aantal miljoen gereden kilometers}}
$$


{: .callout.callout-info}
>## Gevraagd
>
>* Vergelijk de cijfers voor 2015 en 2022.
>* Wordt autorijden in België steeds veiliger?
>* Gebruik `aantal_doden` en `aantal_miljoen_gereden_km` in jouw oplossing;
>* Gebruik `risico` als `variabele` of `object` om jouw resultaat in op te slaan.

## Invoer

```R
aantal_doden <- c(A, B)
aantal_miljoen_gereden_km <- c(X, Y)
```

## Uitvoer

* Als resultaat krijg je twee numerieke waarden, gescheiden met een spatie. De eerste waarde is het risico voor 2015, de tweede waarde voor 2022.
* Bijvoorbeeld:
```
0.2364 0.2187
```
* Bewaar deze waarden in de `variabele` of `object` genaamd `risico`. 
* Vergeet niet om te **debuggen** en eventuele fouten op te lossen.
