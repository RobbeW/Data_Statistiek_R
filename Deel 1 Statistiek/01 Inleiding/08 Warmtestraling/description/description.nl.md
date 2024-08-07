Straling is één van de manieren waarop warmte wordt overgedragen. Je voelt dat een oven warm is zonder de deur aan te raken of naar binnen te kijken. Andere vormen zijn *conductie* en *convectie*.

Alle objecten absorberen en geven straling af. De hoeveelheid warmte die wordt overgedragen door **straling** hangt in grote mate af van de kleur van het object. Zwart is zeer effectief, wit absorbeert de warmte veel minder goed. Ongetwijfeld heb je dit al gemerkt toen je op een zonnige dag een zwart shirt droeg. Het omgekeerde klopt ook, zwarte voorwerpen zullen warmte beter afgeven door straling.

![De stralingswarmte van het hete metaal is zichtbaar voor het menselijke oog.](media/Hot_metalwork.jpg "Foto door Fir0002/Flagstaffotos op Wikimedia Commons."){:data-caption="De stralingswarmte van het hete metaal is zichtbaar voor het menselijke oog." width="45%"}

De hoeveelheid warmtestraling $$\mathsf{H}$$ die overgedragen wordt per tijdseenheid  (uitgedrukt in watt) wordt bepaald door de *Stefan-Boltzmann stralingswet*:

$$
    \mathsf{H = \sigma \cdot \epsilon \cdot A \cdot T^4}
$$

waarbij $$\mathsf{\sigma}$$ (*sigma*) de *Stefan-Boltzmann constante* is, namelijk 5,67 · 10<sup>-8</sup> W / (m² · K⁴). Het getal $$\mathsf{\epsilon}$$ de emissiecoëfficiënt, een getal tussen 0 en 1 dat aangeeft hoe goed een voorwerp warmte uitstraalt/absorbeert. Bij een perfect zwart object is dit 1 en bij een object dat alles reflecteert is dit 0. Tot slot stelt $$\mathsf{A}$$ de oppervlakte van het object voor en $$\mathsf{T}$$ de temperatuur van het object (in **kelvin**).

## Gegeven

De huidoppervlakte van een volwassen mens is ongeveer 1,5 m², de huidtemperatuur bedraagt normaal ongeveer 33°C. Verschillende stoffen dragen kan de energie die je uitstraalt verminderen. In onderstaande tabel vind je de emissiecoëfficiënt $$\epsilon$$ van verschillende stoffen. Hoe hoger de waarde, hoe gemakkelijk je warmte uit**straalt**. 

| Stof                    | Emissiecoëfficiënt $$\mathsf{\epsilon}$$ | 
|:-----------------------:|:----------:|
| Katoen                  | 0,68       |
| Wol                     | 0,73       |
| PET                     | 0,79       |
| Polyamide PA            | 0,82       |
| PET / Katoen mix        | 0,77       |
| PET / Wol mix           | 0,78       |
| Linnen                  | 0,69       |
| Naakte huid             | 0,97       |
| Aluminium reddingsdeken | 0,05       |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}

## Gevraagd

- Vul de gegevens `sigma`, `oppervlakte` en `temperatuur_celcius` aan. (Tip: machten geef je in via `^`)

- Maak de **vector** `emissie` (met de emissiecoëfficienten) aan. (respecteer de volgorde uit de tabel)

- Vorm de temperatuur om naar de kelvinschaal in de variabele `temperatuur_kelvin`. (Ter herinnering: 0°C = 273K)

- Bereken de hoeveelheid warmtestraling (uitgedrukt in watt) die het lichaam **verlaat** in een vector genaamd `warmtestraling_uit`. **Rond af** op 2 cijfers.

- Gelukkig **ontvangt** het lichaam ook warmtestraling van de omgeving. Indien de omgevingtemperatuur 20°C is, bereken dan op dezelfde manier de vector `warmtestraling_in`. **Rond** ook **af** op 2 cijfers.

- Bereken nu het **nettoverlies** van energie door straling in de variabele `verlies`. Dit kan je beschouwen als de hoeveelheid watt die het lichaam elk uur verliest.

- Een appel eten bevat ongeveer 75 kilocalorieën, of ongeveer 87 wattuur. Bepaal in de vector `zuinige_stoffen` de stoffen waarbij het warmteverlies gecompenseert wordt door een appel te eten. Gebruik hiervoor eerst een **booleaanse** vector `zuinig`. 