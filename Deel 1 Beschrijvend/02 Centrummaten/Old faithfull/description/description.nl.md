<a href="https://nl.wikipedia.org/wiki/Old_Faithful" target="_blank">Old Faithful</a> is de beroemdste geiser in het Amerikaanse Yellowstone National Park. Van de vele geisers is deze de meest actieve, namelijk om de 60 tot 80 minuten worden hete dampen in de lucht geblazen.

<div class="hidden-print">
    <div class="dodona-centered-group">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/Q8oZoVC8rGc?si=jBEjPaMPyB9VryaI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
</div>

## Gegeven

Van de meeste uitbarstingen wordt de tijdsduur gemeten, alsook de tijd waarop er geen uitbarsting was. Via <a href="https://geysertimes.org/geyser.php?id=Old+Faithful" target="_blank">GeyserTimes</a> kan je de meest recente uitbarstingen (tijdens de openingstijden van het park) volgen.

Importeer <a href="https://github.com/gchoi/Dataset/blob/master/OldFaithful.csv" target="_blank">deze dataset</a> met behulp van de volgende code.

```R
# Een dataset met gegevens Old Faithful
data <- read.csv("https://raw.githubusercontent.com/gchoi/Dataset/master/OldFaithful.csv",
                 header = TRUE)
colnames(data) <- c("time_eruption", "time_waiting")
```

Via `head(data)` om een **voorsmaakje** van de gegevens te verkrijgen.

```
  time_eruption time_waiting
1         3.600           79
2         1.800           54
3         3.333           74
4         2.283           62
5         4.533           85
6         2.883           55
```

`time_eruption` bevat de tijdsduur in minuten van de uitbarsting, terwijl `time_waiting` de tijd in minuten bevat tussen de vorige en de beschouwde uitbarsting.

## Gevraagd

- Binnen Yellowstone National Park noemt men een uitbarsting **kort** indien deze *minder dan 3,5 minuten* duurt. Bepaal een **booleaanse** vector `kort` waarin je opslaat welke uitbarstingen van het korte type zijn. 

- Bepaal nu **met behulp van de vorige booleaanse vector** de vectoren `wachttijd_kort` en `wachttijd_lang` waar je de wachttijden van de uitbarstingen van het korte type en het lange type in opslaat.

- Hoeveel **procent** van het totale aantal uitbarstingen hebben een wachttijd tussen de gemiddelde wachttijd bij de korte uitbarstingen en de gemiddelde wachttijd bij de lange uitbarstingen? Sla dit op in de variabele `percentage_wachttijd`. Bereken hiervoor eerst de twee gemiddelden sla ze op in aparte variabelen (Kies zelf een naam). Rond het percentage af op **2 cijfers na de komma**.