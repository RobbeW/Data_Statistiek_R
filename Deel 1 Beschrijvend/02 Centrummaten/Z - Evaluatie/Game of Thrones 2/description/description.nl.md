<div class="text-end">
    <a class="btn btn-filled with-icon" href="https://dodona.be/nl/courses/2690" target="_blank"><i class="mdi mdi-backburger mdi-24" title="link"></i>Link naar de vorige oefeningen</a>
</div>

Game of Thrones is een Amerikaanse fantasy-televisieserie die werd uitgezonden op de televisiezender HBO. Het is gebaseerd op de boeken uit de serie "A song of Ice and Fire" van de Amerikaanse schrijver George R.R. Martin. De serie liep van 17 april 2011 tot 19 mei 2019. 

![Een scene uit Game of Thrones.](media/got.png "Een scene uit game of Thrones."){:data-caption="Een scene uit game of Thrones." width="45%"}

## Gegeven

Maak gebruik van <a href="https://github.com/MuazmaZ/got-data-analysis/blob/master/got_csv_full_clean.csv" target="_blank">deze dataset</a>, die je kan inlezen via:

```R
# Dataset Game of Thrones
data <- read.csv(paste0("https://raw.githubusercontent.com/MuazmaZ/got-data-analysis/master/got_csv_full_clean.csv"),
                 sep = ",", header = TRUE,
                 colClasses = c("numeric", "NULL", "numeric", rep("character",2), rep("NULL", 2), rep("numeric", 2), "NULL", rep("numeric",3)))
# De kolommen hernoemen
colnames(data) <- c("season", "episode", "name", "director",
                    "US_viewers_million", "runtime_mins", "IMDB_votes", "IMDB_score", "notable_deaths")
```

Via `head(data)` krijg je een overzicht van de dataset.

```
  season episode                       name       director US_viewers_million runtime_mins IMDB_votes IMDB_score notable_deaths
1      1       1           Winter Is Coming Tim Van Patten               2.22           62      27685        9.0              4
2      1       2              The Kingsroad Tim Van Patten               2.20           56      21256        8.8              3
3      1       3                  Lord Snow     Brian Kirk               2.44           58      20090        8.7              0
4      1       4 Cripples, Bastards, and...     Brian Kirk               2.45           56      19123        8.8              1
5      1       5      The Wolf and the Lion     Brian Kirk               2.58           55      20062        9.1              5
6      1       6             A Golden Crown Daniel Minahan               2.44           53      19908        9.2              4
```

De kolom `US_viewers_million` stelt het aantal Amerikaanse kijkers voor (in miljoen), `runtime_mins` het aantal minuten dat de aflevering (episode) duurt, `IMDB_votes` het aantal stemmers op de ratingwebsite IMDB, `IMDB_score` de score op 10 gegeven door de stemmers en `notable_deaths` het aantal hoofdpersonages die stierven in de aflevering. De betekenis van de andere kolommen is vanzelfsprekend.

## Gevraagd

- De afleveringen duurden steeds ongeveer een uur. Bepaal **hoeveel uur** (dus **niet** het aantal minuten!) een aflevering **gemiddeld** duurt. Sla dit op in `gem_speeltijd` en **rond af op 2 decimalen**.

- Sommige afleveringen kenden een lange speeltijd. **Selecteer** de namen van de afleveringen die **minstens** 1 uur en een kwartier duurden en sla dit op in `lange_afleveringen`.

- Verschillende mensen beweren dat het eerste seizoen het beste seizoen is. Vergelijk de **mediane** score van het eerste en het achtste (laatste) seizoen. Sla dit op in `mediaan_seizoen1` en `mediaan_seizoen1`.  
Tip: bepaal eerst een booleaanse vector `seizoen1` waar je de scores van de afleveringen uit het eerste seizoen in opslaat. Doe hetzelfde voor het tweede seizoen.