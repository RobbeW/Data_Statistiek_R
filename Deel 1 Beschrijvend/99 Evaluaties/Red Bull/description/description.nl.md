Het drankje Red Bull wordt in de markt gezet als bevorderlijk bij mentale stress. Men claimt dat het bijvoorbeeld zou helpen bij het studeren.

In 2014 voerde *The American Journal of Cardiology* <a href="https://www.ajconline.org/article/S0002-9149(14)02005-0/fulltext" target="_blank">een onderzoek</a> uit naar deze beweringen. 20 jonge mensen moesten ofwel een blikje Red Bull, ofwel een blikje water drinken en 80 minuten later gedurende 5 minuten een rekentest uitvoeren. Enkele dagen later werden de rollen omgekeerd, de eerste groep dronk dan een blikje water, de tweede groep een blikje Red Bull.

![Een fris blikje Red Bull.](media/jesper-brouwers.jpg "Foto door Jesper Brouwers op Unsplash."){:data-caption="Een fris blikje Red Bull." width="45%"}

## Gegeven

Je vindt onderaan een **data frame** met de leeftijd, het geslacht en zowel de systolische (bovendruk) als diastolische (onderdruk) bloeddruk voor als na het drinken van water `w` en Red Bull `rb`. Ook de hartslag werd in alle gevallen geregistreerd. Voor het drinken werd geregistreerd als `pre` en na het drinken als `post`.

## Gevraagd

- Hoeveel stijgt de **systolische** bloeddruk na het drinken van een blikje Red Bull? Bepaal dit in de vector `toename_sp_rb`. Analoog voor de **diastolische** bloeddruk in de vector `toename_dp_rb`.

- Een toename in de bloeddruk van 10 mm Hg of meer is noemenswaardig. Selecteer de **leeftijden** van de proefpersoenen waarbij **zowel** de systolische als de diastolische bloeddruk **met 10 mm Hg of meer** steeg. Sla dit op in de variabele `leeftijd_grote_stijging`. Gebruik hiervoor *bijvoorbeeld* een booleaanse vector.

- Hoeveel **procent** van de proefpersonen had te kamen met een noemenswaardige stijging van de bloeddruk? Bewaar dit in de variabele `grote_stijging`. (Tip: het aantal proefpersonen kan je opvragen via `length(data$age)`)

- In plaats van steeds te werken met de systolische $$\text{SP}$$ en diastolische bloeddruk $$\text{DP}$$ gebruikt men vaak de **gemiddelde bloeddruk** $$\text{MAP}$$, zoals hieronder gedefinieerd.

  Bereken de gemiddelde bloeddruk voor en na het drinken van het blikje Red Bull in de vectoren `map_pre_rb` en `map_post_rb`. Rond beide af op **één cijfer na de komma.**

$$
    \text{MAP} = \text{DP} + \dfrac{1}{3} \left( \text{SP} - \text{DP} \right)
$$

  
