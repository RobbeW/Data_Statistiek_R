## Context

De afgelopen jaren heeft België een aanzienlijke toename gezien van mensen die voor langere tijd thuis zijn vanwege ziekte. De redenen voor hun afwezigheid zijn divers, variërend van kanker en revalidatie na ongelukken tot psychologische problemen zoals burn-outs en depressies. Hoewel deze groep uit alle lagen van de bevolking komt, zijn het vooral vrouwen, 50-plussers en mensen uit de zorgsector of het onderwijs die vaker langdurig afwezig zijn.

In 2008 waren er ongeveer 250.000 langdurig zieken die **minstens één jaar niet-actief zijn op de arbeidsmarkt**. Maar in de afgelopen 15 jaar is dit aantal verdubbeld tot meer dan een half miljoen. Als de huidige trend zich voortzet, voorspelt het Planbureau dat dit aantal in 2035 zelfs 600.000 zou kunnen bereiken. Deze groei van langdurig zieke mensen heeft grote economische implicaties, met een jaarlijkse kostenpost van bijna 11 miljard euro voor de sociale zekerheid. Dit komt door uitkeringen en het mislopen van inkomsten uit bijdragen uit arbeid aan de sociale zekerheid. 

## Gegeven

We voeren een onderzoek naar het aantal verloren arbeidsjaren door ziekte (=jaren waarin een persoon niet kan bijdragen aan de arbeidsmarkt en sociale zekerheid door ziekte). Daarvoor moeten we een **som** maken van het aantal langdurig zieken over de jaren heen. 

We krijgen volgende tabel: 

<table>
    <thead>
        <tr>
            <th>Jaar</th>
            <th> _ </th>
            <th>Aantal langdurig zieken (1 jaar)</th>
        </tr>
    </thead>
    <tbody>
        <tr><td>2008</td><td> </td><td>250,000</td></tr>
        <tr><td>2009</td><td> </td><td>266,667</td></tr>
        <tr><td>2010</td><td> </td><td>283,334</td></tr>
        <tr><td>2011</td><td> </td><td>300,001</td></tr>
        <tr><td>2012</td><td> </td><td>316,668</td></tr>
        <tr><td>2013</td><td> </td><td>333,335</td></tr>
        <tr><td>2014</td><td> </td><td>350,002</td></tr>
        <tr><td>2015</td><td> </td><td>366,669</td></tr>
        <tr><td>2016</td><td> </td><td>383,336</td></tr>
        <tr><td>2017</td><td> </td><td>400,003</td></tr>
        <tr><td>2018</td><td> </td><td>416,670</td></tr>
        <tr><td>2019</td><td> </td><td>433,337</td></tr>
        <tr><td>2020</td><td> </td><td>450,004</td></tr>
        <tr><td>2021</td><td> </td><td>466,671</td></tr>
        <tr><td>2022</td><td> </td><td>483,338</td></tr>
        <tr><td>2023</td><td> </td><td>500,005</td></tr>
    </tbody>
</table>



{: .callout.callout-info}
>## Gevraagd
>
>1. **De variabele maken voor de jaren:**  
> Creëer een variabele genaamd jaren waarin je de gegeven jaren opslaat.
>
>```
> jaren <- c(2008, 2009, ... )
>```
>
>2. **Variabelen aanmaken voor het aantal langdurig zieken:**  
> Creëer een variabele genaamd aantal_zieken waarin je het aantal langdurig zieken voor de gegeven jaren opslaat.
>
>```
> aantal_zieken <- c(250.000, 266.667, ...)
>```
>
>3. **Totale aantal verloren arbeidsjaren door ziekte berekenen::**  
> Bereken het totale aantal verloren arbeidsjaren door ziekte voor de gegeven jaren met behulp van de sum functie in R.
>
>```
>totaal_zieken <- sum( ... )
>```
>4. **Resultaten weergeven:**
>Gebruik de print functie om zowel de jaren als aantal_zieken en totaal_zieken te tonen.
>```
>print(totaal_zieken)
>```


