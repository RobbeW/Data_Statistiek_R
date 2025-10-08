
Binnen de wereld van online games zijn sommige games nu eenmaal beter dan andere. Gelukkig voor ons laten de gamers ook regelmatig hun mening horen door aan veel games een **rating** toe te kennen.

In onderstaande dataset vinden we een lijst van de grootste games van 1980 tot 2023, met de gemiddelde rating van dit spel hierbij genoteerd.

![Een playstation 5 console.](media/playstation5.jpg "Foto door Pascal op Pexels."){:data-caption="Een playstation 5 console." width="45%"}

Zo vinden we bijvoorbeeld dat het spel 'Dark Souls III' (een spel uit 2016) een rating van 4,2 krijgt.

## Gegeven

Je ziet hier een **voorsmaakje** van dit dataframe

```
                title  rating  reviews
1          Elden Ring     4.5     3900
2               Hades     4.3     2900
3 The Legend of Zelda     4.4     4300
4           Undertale     4.2     3500
5       Hollow Knight     4.4     3000
6           Minecraft     4.3     2300
```

Er zijn dus 3 vectoren terug te vinen

## Gevraagd

- De maximale SAR waarden vastgelegd door Europa zijn: 2 W/kg voor een smartphone in een jaszak en 4 W/kg in een broekzak. Bepaal een booleaanse vector `niet_conform` waarbij je nagaat welke toestellen **niet voldoen** aan minstens één van deze voorwaarden.

- Gebruik **die booleaanse vector** om de toestellen weer te tonen die **wel** binnen de Europese grenzen liggen. Geef deze toestellen weer onder de vorm `merk model`. Gebruik hiervoor `paste()` om deze aan elkaar te plakken. 

{: .callout.callout-info}
>#### Tip
>
> Het R commando `paste()` werkt op eenzelfde manier als `print()` binnen Python. Zo is `paste("Nokia", "3310")` gelijk aan `Nokia 3310`.

