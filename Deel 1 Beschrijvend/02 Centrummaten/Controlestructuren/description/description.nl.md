Op deze pagina vind je de syntax van de verschillende controlestructuren in R. Er wordt telken een vergelijking gemaakt met de reeds gekende structuren binnen Python.

### De selectiestructuur

Een **eenvoudige keuzestructuur** in Python zag er als volgt uit:

```python
if voorwaarde:
    actie
```

Of een **meervoudige keuze** behulp van `elif`:

```python
if voorwaarde:
    actie_1
elif voorwaarde:
    actie_2
else:
    actie_3
```

Dit kan ook binnen R, met de volgende syntax:
```R
if (voorwaarde) {
  actie
}
```

Of een meervoudige keuzestructuur:
```R
if (voorwaarde) {
  actie_1
} else if (voorwaarde) {
  actie_2
} else {
  actie_3
}
```

### De begrensde herhaling

Een typische begrensde herhaling werd binnen Python als volgt gecodeerd:

```python
for i in range(n):
    acties
```

In R wordt dit als volgt gecodeerd:

```R
for (i in 1:n) {
  acties
}
```

Je kon binnen Python itereren over **lijsten**:

```python
lijst = ['item_1', 'item_2', 'item_3']
for item in lijst:
    acties
```

Dit kan analoog voor de **vectoren** in R.
```R
vector <- c("item_1", "item_2", "item_3")
for (item in vector) {
  acties
}
```

{: .callout.callout-info}
> #### Samengevat
>
> Je merkt dat de constrolestructuren binnen R zeer gelijkaardig zijn als in Python. Het grootste verschil in de syntax is:
> - Het gebruik van **accolades** `{}` in plaats van indentaties om codeblokken aan te duiden;
> - Het gebruik van **haakjes** `()` rond voorwaarden en herhalingscondities.
>
> Daarnaast zijn er nog kleine verschillen, zoals `else if` in plaats van `elif`, enz...