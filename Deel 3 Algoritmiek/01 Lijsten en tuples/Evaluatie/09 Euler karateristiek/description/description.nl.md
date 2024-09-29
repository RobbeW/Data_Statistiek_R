De Eulerkarakteristiek $$\mathsf{\chi}$$ (*chi*), oorspronkelijk gedefinieerd voor veelvlakken door het wiskundig genie Leonard Euler, is een getal dat bepaalt in welke mate een veelvlak gaten, of dergelijke bevat.

Voor een niet-zelfdoorsnijdend (en niet-samengesteld) veelvlak is de Eulerkarateristiek steeds gelijk aan 2:

$$
\mathsf{\chi  = H - R + V = 2}
$$

Hierbij staat H voor het aantal hoekpunten, R voor het aantal ribben en V voor het aantal vlakken.

<div class="hidden-print">
    <div class="dodona-centered-group">
        <blockquote class="tiktok-embed" cite="https://www.tiktok.com/@reason4math/video/7349075481620253995" data-video-id="7349075481620253995" > <section> <a target="_blank" title="@reason4math" href="https://www.tiktok.com/@reason4math?refer=embed">@reason4math</a> Visualization of Euler&#39;s polyhedron formula: V - E + F = 2 .</section> </blockquote> <script async src="https://www.tiktok.com/embed.js"></script>
    </div>
</div>

## Gevraagd

Schrijf een functie `chi(kenmerken)` die gegeven een tupel van de vorm `(H, R, V)` de Eulerkarakteristiek bepaalt.

#### Voorbeeld

Bij een kubus bekomt men:
```python
>>> chi((8, 12, 6))
2
```

Bij een icosaëder (of twintigvlak) bekomt men:
```python
>>> chi((12, 30, 20))
2
```
