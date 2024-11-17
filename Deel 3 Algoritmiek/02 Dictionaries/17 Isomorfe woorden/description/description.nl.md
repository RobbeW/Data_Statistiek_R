Woorden worden *isomorf* genoemd indien er een vertaling betaat van het ene naar het andere woord. Onder vertaling bedoelt men dat je een letter door een andere letter vervang. Hierbij mag je **geen** twee verschillende letters door eenzelfde letter vervangen, je mag wel letters behouden. De volgorde moet bewaard blijven.

De woorden `bal` en `pet` zijn bijvoorbeeld isomorf, je kan immers `b` vervangen door `p`, `a` door `e` en `l` door `t`.

De woorden `maan` en `mens` zijn niet isomorf, indien je immers `a` vervangt door `e` zal je de `n` uit mens niet kunnen bekomen.

## Gevraagd
Schrijf een functie `is_isomorf(woord1, woord2)` dat controleert of de twee woorden al dan niet isormorf zijn. Bestudeer onderstaande voorbeelden.

#### Voorbeelden

```python
>>> is_isomorf("bal", "pet")
True
```

```python
>>> is_isomorf("maan", "mens")
False
```

```python
>>> is_isomorf("regen", "leven")
True
```

```python
>>> is_isomorf("levensloop", "levensloop")
True
```
