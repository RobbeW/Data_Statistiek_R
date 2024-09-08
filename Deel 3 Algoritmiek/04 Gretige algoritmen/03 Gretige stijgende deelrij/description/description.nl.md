Indien je een rij verschillende getallen hebt, dan definieert men een *gretige* stijgende deelrij als volgt:

- start met het eerste getal;
- zoek daarna naar het **eerstvolgende** getal dat groter is dan het vorige getal;
- herhaal deze werkwijze.

Stel bijvoorbeeld dat je een rij `[2, 3, 1, 5, 4, 8, 6, 7]` hebt, dan kan je een stijgende deelrij maken door te starten met `[2]`. Het eerst volgende getal dat groter is voeg je hieraan toe, zodat je `[2, 3]` bekomt. Het volgende getal dat groter is, is 5. Dus bekom je `[2, 3, 5]`. Tot slot is 7 nog groter dan 5. De uiteindelijke *gretige* stijgende deelrij is dus: `[2, 3, 5, 8]`.

Men noemt dit algorite *gretig* omdat het niet de beste stijgende deelrij geeft.  De deelrij `[2, 3, 4, 6, 7]` is immers langer.


## Gevraagd

Schrijf een functie `gretig_stijgend(rij)` die gegeven een lijst met getallen dit algoritme toepast en een stijgende deelrij retourneert.

Bestudeer grondig onderstaand voorbeelden

#### Voorbeelden

```python
>>> gretig_stijgend([2, 3, 1, 5, 4, 8, 6, 7])
[2, 3, 5, 8]
```

```python
>>> gretig_stijgend([1, 2, 3, 4, 5])
[1, 2, 3, 4, 5]
```

```python
>>> gretig_stijgend([5, 4, 3, 2, 1])
[5]
```

{: .callout.callout-secondary}
>#### Bron
> HiQ challenge, Zweden 2017