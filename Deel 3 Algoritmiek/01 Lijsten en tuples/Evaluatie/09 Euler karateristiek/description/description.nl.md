De **Eulerkarakteristiek** $$\mathsf{\chi}$$ (*chi*), oorspronkelijk gedefinieerd voor veelvlakken door het wiskundig genie Leonard Euler, is een getal dat bepaalt in welke mate een veelvlak gaten, of dergelijke bevat.

Voor een niet-zelfdoorsnijdend (en niet-samengesteld) veelvlak is de Eulerkarateristiek steeds gelijk aan 2:

$$
\mathsf{\chi  = H - R + V = 2}
$$

Hierbij staat H voor het aantal hoekpunten (*vertices*), R voor het aantal ribben (*edges*) en V voor het aantal vlakken (*faces*).

<div class="hidden-print">
    <div class="dodona-centered-group">
        <iframe width="315" height="560"
        src="https://youtube.com/embed/1b76mpVyTBM?si=Wl9ktoWQxJhnHxpg"
        title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; encrypted-media;picture-in-picture" allowfullscreen></iframe>
    </div>
</div>

## Gevraagd

Schrijf een functie `chi(kenmerken)` die gegeven een tupel van de vorm `(H, R, V)` de Eulerkarakteristiek bepaalt.

#### Voorbeelden

Bij een kubus bekomt men:
```python
>>> chi((8, 12, 6))
2
```

Bij een dodecaëder (of twaalfvlak) bekomt men:
```python
>>> chi((20, 30, 12))
2
```
