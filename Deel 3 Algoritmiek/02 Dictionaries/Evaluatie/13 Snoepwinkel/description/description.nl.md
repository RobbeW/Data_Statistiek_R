Alice heeft een hoeveelheid snoepjes van een bepaald type. Haar arts adviseert echter dat ze enkel de helft van al haar snoepjes mag eten. 
Ze eet zeer graag snoep en wil zoveel mogelijk **verschillende soorten** snoep eten, terwijl ze toch het advies van haar arts volgt.

!["Foto By Claudio Schwarz op Unsplash."](media/claudio-schwarz.jpg "Foto By Claudio Schwarz op Unsplash."){:data-caption="Foto By Claudio Schwarz op Unsplash." width="40%"}

## Gevraagd
Schrijf een functie `snoep_eten(snoeplijst)` dat gegeven een lijst met al haar snoepjes het maximale aantal **verschillende snoepjes** bepaalt dat Alice kan eten. De snoeplijst heeft steeds een even lengte.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> snoep_eten(["zuur beertje", "zuur beertje", "kers", "kers", "colaflesje", "colaflesje"])
3
```
In haar lijst zitten 6 snoepjes, ze mag er dus 3 eten van de arts. Er zijn ook drie verschillende types, ze kan van elk type dus eentje eten.

```python
>>> snoep_eten(["zuur beertje", "zuur beertje", "kers", "colaflesje"])
2
```
In haar lijst zitten 4 snoepjes, ze mag er dus 2 eten van de arts. Ze kan een zuur beertje en een kers, of een kers en colaflesje of een zuur beertje en een colaflesje eten. Ze kiest dus twee snoepjes van een verschillend type.

```python
>>> snoep_eten(["colaflesje", "colaflesje", "colaflesje", "colaflesje"])
1
```
Ze heeft 4 snoepjes en mag er dus 2 eten van de arts. Maar omdat ze maar één type heeft zal ze maar één snoepje eten.