Knutselsmurf opende een houtzagerij en heeft nu verschillende smurfen die graag hun hout laten verzagen. Een stuk hout in `k` stukken verzagen neemt `k` tijdseenheden in beslag en hij kan slechts één stuk per keer verzagen.

Om te zorgen dat zijn smurfen niet lang moeten wachten besluit hij de **gemiddelde** wachttijd, tot alle stukken hout die een klant wil laten verzagen, te minimaliseren. Kan je hem helpen?

![Zaagsmurf.](media/smurfs.gif "Zaagsmurf."){:data-caption="Zaagsmurf." width="220px"}

## Gevraagd
Smurf een functie `gemiddelde_wachttijd(opdrachten)` die gegeven een lijst met zaagopdrachten van verschillende smurfen de kleinste gemiddelde wachttijd retourneert. Elke opdracht kan uit meerdere stukken hout bestaan die verzaagd moeten worden, Knutselsmurf mag volledig kiezen in welke volgorde hij de opdrachten afwerkt, zolang de gemiddelde wachttijd per klant minimaal is.

**Rond af** op 6 cijfers na de komma.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeelden

```python
>>> gemiddelde_wachttijd([[5], [7]])
8.5
```

Het duurt in het beste geval gemiddelde 8,5 tijdseenheden voordat de opdrachten van de beide smurfen werd afgewerkt.

```python
>>> gemiddelde_wachttijd([[7, 5]])
12.0
```

Hier was maar één klant en het duurt 12 tijdseenheden voordat de zaagopdrachten werden afgewerkt. Dat is meteen de beste (gemiddelde) tijd.

```python
>>> gemiddelde_wachttijd([[5], [7, 5]])
11.0
```

Denk zelf na in welke volgorde Knutselsmurf dit kan aanpakken...

```python
>>> gemiddelde_wachttijd([[5], [6, 5], [5, 5, 5]])
17.333333
```

Denk zelf na in welke volgorde Knutselsmurf dit kan aanpakken...

{: .callout.callout-secondary}
>#### Bron
> Alberta Collegiate Programming Contest 2016
