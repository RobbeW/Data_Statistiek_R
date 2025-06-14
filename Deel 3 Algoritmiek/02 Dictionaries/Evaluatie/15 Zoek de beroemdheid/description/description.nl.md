Er gaat een gerucht rond dat er een beroemheid in het dorp woont. Iemand is beroemd indien:

- de beroemdheid niemand uit het dorp bij naam kent;
- alle andere inwoners de beroemdheid bij naam kennen;
- er hoogstens één persoon is die aan bovenstaande regels voldoet.

!["Foto door Clem Onojeghuo op Unsplash."](media/clem-onojeghuo.jpg "Foto door Clem Onojeghuo op Unsplash."){:data-caption="Foto door Clem Onojeghuo op Unsplash." width="40%"}

Je krijgt een lijst die weergeeft of personen elkaars naam kennen. Zo geldt bijvoorbeeld bij de lijst `[(1, 3), (2, 3)]` dat persoon `1` persoon `3` kent en ook persoon `2` kent persoon `3`. In dit geval zou persoon `3` de geheime beroemdheid zijn, die persoon kent immers niemand anders.

## Gevraagd
Schrijf een functie `zoek_beroemdheid(aantal, lijst)` dat gegeven het aatal inwoners en zo'n lijst op zoek gaat naar de geheime beroemdheid. Als deze beroemdheid niet bestaat, dan retourneer je `-1`.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> zoek_beroemdheid(3, [(1, 3), (2, 3)])
3
```

```python
>>> zoek_beroemdheid(2, [(1, 2)])
2
```

```python
>>> zoek_beroemdheid(3, [(1, 3), (2, 3), (3, 1)])
-1
```

