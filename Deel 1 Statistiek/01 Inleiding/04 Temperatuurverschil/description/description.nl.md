Het <a href="https://www.meteo.be/nl/klimaat/klimaat-van-belgie/klimatologisch-overzicht" target="_blank">KMI</a> houdt elke dag nauwgezet verschillende statistieken over het weer en klimaat bij.

![Een buitenthermometer.](media/jaroslaw-kwoczala.jpg "Foto door Jaroslaw Kwoczala op Unsplash."){:data-caption="Een buitenthermometer." width="45%"}

De volgende temperaturen (in graden Celsius) werden verzameld in 2023 te Ukkel.

| Maand     | Gemiddelde | Normale waarden | Minimale waarde | Maximale waarde  |
|:---------:|:-----:|:-----:|:-----:|:-----:|
| Januari   | 5.2   | 3.7   | -0.2  | 7.2   |
| Februari  | 5.9   | 4.2   | 0     | 7.2   |
| Maart     | 7.5   | 7.1   | 3     | 9.6   |
| April     | 9     | 10.4  | 7.3   | 14.3  |
| Mei       | 14    | 13.9  | 10.4  | 16.4  |
| Juni      | 20.3  | 16.7  | 13.2  | 19.3  |
| Juli      | 18.4  | 18.7  | 15.3  | 23    |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}

In deze tabel staat telkens de *gemiddelde maandtemperatuur*, de *'normale' (gemiddelde) waarden sinds 1991* en de *koudste* en *warmste (gemiddelde) temperatuur* sinds 1991. Zo was het in juli gemiddeld 18,4°C. Daarmee deed 2023 het iets slechter dan de 'normale' temperatuur sinds 1991 die 18,7°C bedraagt. De koudste julimaand had een gemiddelde temperatuur van 15,3°C, terwijl de heetste julimaand het gemiddeld 23°C was.

## Rekenen met vectoren

De verschillende gegevens werden reeds als vijf vectoren klaargezet. In R kan je **paarsgewijs** met deze vectoren rekenen.

Om het verschil met de 'normale' temperaturen te berekenen gebruikt men zeer eenvoudig:
```R
gemiddelde_temperatuur - normale_temperatuur
# 1.5  1.7  0.4 -1.4  0.1  3.6 -0.3
```

Je merkt meteen dat de junimaand uitzonderlijk warm was. 

R kan zelfs vectoren met **booleaanse waarden** aanmaken. Beschouw bijvoorbeeld:
```R
(gemiddelde_temperatuur - normale_temperatuur) > 0
# TRUE TRUE TRUE FALSE TRUE TRUE FALSE
```

Indien men zich nu bijvoorbeeld afvraagt welke maanden warmer waren dan 'normaal', dan kan men dit gemakkelijk bepalen door deze uit de vector `maanden` te **selecteren**:

```R
warmer_dan_normaal <- (gemiddelde_temperatuur - normale_temperatuur) > 0
maanden[warmer_dan_normaal]
# "Januari" "Februari" "Maart" "Mei" "Juni"
# Enkel de maanden waar respectievelijk TRUE stond worden geselecteerd! Supercool!
```

## Gegeven

Gebruik bovenstaande tabel (en de onderstaande vectoren) om de volgende vragen te beantwoorden.

## Gevraagd

- Maak een variabele `extreem_verschil` aan die voor elke maand het temperatuursverschil tussen de heetste en koudste waarde berekent.

- Welke maanden zijn minstens 1°C kouder dan 'normaal'? 
Bepaal eerst een variabele `graad_kouder_dan_normaal` en gebruik deze dan om de correcte maand(en) te selecteren. Sla deze maand(en) op in de variabele `koude_maanden`.

- Zijn er maanden die nieuwe records hebben gevestigd? Met andere woorden, maanden die gemiddeld gesproken heter of koeler waren dan het huidge record (sinds 1991). 
  Maak een vector `extreem` aan met booleaanse waarden die deze vraag beantwoordt. **Selecteer** nadien de relevante maand(en) en **geef deze weer**.

{: .callout.callout-info}
>#### Tips
>
>R kent natuurlijk ook **booleaanse operatoren**, zo geldt:
> - and-operator `&`, bvb: `TRUE & FALSE` is `FALSE`;
> - or-operator `|`, bvb: `TRUE | FALSE` is `TRUE`, op een mac gebruik je de combinatie <kbd>SHIFT ⇧</kbd> + <kbd>OPTION ⌥</kbd> + <kbd>L</kbd>;
> - not-operator `!`, bvb: `!TRUE` is `FALSE`.
