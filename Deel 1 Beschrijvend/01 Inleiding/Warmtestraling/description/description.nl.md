Straling is één van de manieren waarom warmte wordt overgedragen. Je voelt dat een oven warm is zonder de deur aan te raken of naar binnen te kijken.

Alle objecten absorberen en geven straling af. De hoeveelheid warmte die per seconde wordt overgedragen door straling hangt in grote mate af van de kleur van het object. Zwart is zeer effectief, wit absorbeert de warmte veel minder goed. Ongetwijfeld heb je dit al gemerkt toen je op een zonnige dag een zwart shirt droeg. Het omgekeerde klopt ook, zwarte voorwerpen zullen warmte beter afgeven door straling.

![De stralingswarmte van het hete metaal is zichtbaar voor het menselijke oog.](media/Hot_metalwork.jpg "Foto door Fir0002/Flagstaffotos op Wikimedia Commons."){:data-caption="De stralingswarmte van het hete metaal is zichtbaar voor het menselijke oog." width="45%"}

De hoeveelheid warmtestraling die overgedragen wordt per seconde $$H$$ (uitgedrukt in watt) wordt bepaald door de *Stefan-Boltzmann stralingswet*:

$$
    H = \sigma \cdot \epsilon \cdot A \cdot T^4
$$

waarbij $$\sigma$$ de *Stefan-Boltzmann constante* is, namelijk $$5,67 \cdot 10^{-8} \dfrac{\text{W}}{\text{m}^2 \cdot \text{K}^4}$$. Het getal $$e$$ de emissiecoëfficiënt, een maat tussen 0 en 1 die aangeeft hoe goed een voorwerp warmte uitstraalt/absorbeert. Een perfect zwart object heeft $$e = 1$$ en een object dat alles reflecteert heeft $$\epsilon = 0$$. Tot slot stelt $$A$$ de oppervlakte van het object voor en $$T$$ de temperatuur van het object (in kelvin).

## Gegeven

De huidoppervlakte van een volwassen mens is ongeveer 1,5 m², de huidtemperatuur bedraagt normaal ongeveer 33°C. Verschillende stoffen dragen kan de energie die je uitstraalt verminderen. In onderstaande tabel vind je de emissiecoëfficiënt $$\epsilon$$ van verschillende stoffen:

| Stof                    | Emissiecoëfficiënt $$\epsilon$$ | 
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

- Bereken de absolute temperatuur in de variabele `temperatuur_kelvin`. Ter herinnering: 0°C = 273,15°K.

- Maak de vector `emissie` aan. (respecteer de volgorde uit de tabel)

- Bereken de hoeveelheid warmtestraling per stof in een vector genaamd `warmtestraling`. **Rond af** op 2 cijfers.

- extra vraagjes