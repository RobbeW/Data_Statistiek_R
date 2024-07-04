Wordt autorijden in België steeds veiliger? Het <a href="https://statbel.fgov.be/nl/themas/mobiliteit/verkeer/verkeersongevallen" target="_blank">aantal verkeersdoden daalt</a> al een aantal jaren. 

![Een auto-ongeval.](media/will-creswick.jpg "Foto door Will Creswick op Unsplash."){:data-caption="Een auto-ongeval." width="40%"}

Anderszijds is het ook zo dat de bevolkingsgrootte elk jaar wijzigt, net als het aantal personen met een rijbewijs, of de drukte op de Belgische wegen. Volstaat het om enkel naar het cijfer van de verkeersdoden te kijken?

## Gegeven
Volgens <a href="https://bestat.statbel.fgov.be/bestat/crosstable.xhtml?view=2386c092-91a3-4a4e-8533-149411d4858a" target="_blank">Statbel</a> waren er in 2015 maar liefst 716 verkeersdoden. In 2022 daalde dat aantal naar 510. Maar, meer auto's genereren meer verkeerskilometers in 2023 dan in 2013. 
De overheid beweert dat in 2015 het **aantal gereden kilometers** 84,2 miljard was. In 2022 is dat aantal gestegen naar 92,9 miljard gereden kilometers. 

Verkeersrapporten gebruiken de grootheid **overlijdensrisico** om beter te kunnen **vergelijken**.

$$
 \mathsf{\text{overlijdensrisico} = \dfrac{\text{aantal doden}}{\text{aantal miljoen gereden kilometers}}}
$$

## Gevraagd
- Maak de variabelen `aantal_doden` en `aantal_miljoen_gereden_km` aan als **vectoren** met de cijfers van 2015 **en** 2022.

- Bereken nadien het **risico** door bovenstaande formule toe te passen, en geef dit risico weer. Let op voor de correcte eenheid in de noemer.

  Je bekomt een **vector** zijn die bestaat uit **twee numerieke waarden**. De eerste waarde is het risico voor 2015, de tweede waarde voor 2022.