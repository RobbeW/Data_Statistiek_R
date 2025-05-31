Stel dat je een lijst met **verschillende** getallen van `0` tot `n` krijgt. Dan kan je die lijst omzetten naar een opeenvolging van 👍️ en 👎️. Indien twee opeenvolgende getallen **stijgen**, vervang deze door 👍️. En anders **dalen** ze en vervang je ze door 👎️.

Zo kan je `[0, 4, 1, 3, 2]` vervangen door `["👍️", "👎️", "👍️", "👎️"]`. Immers van `0` naar `4` is stijgend, van `4` naar `1` is dalend, enz..

De lijst `[0, 1, 2, 3]` zou op dezelfde manier vervangen worden door `["👍️", "👍️", "👍️"]`.

## Gevraagd

Programmeer nu een functie `zoek_lijst(stijgend_dalend)` die gegeven dergelijke opeenvolging van 👍️ en 👎️ op zoek gaat naar de oorspronkelijke lijst met getallen. Soms zijn er meerdere mogelijke oplossing, één van deze oplossingen retourneren volstaat.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeelden

```python
>>> zoek_lijst(["👍️", "👎️", "👍️", "👎️"])
[0, 4, 1, 3, 2]
```

```python
>>> zoek_lijst(["👍️", "👍️", "👍️"])
[0, 1, 2, 3]
```