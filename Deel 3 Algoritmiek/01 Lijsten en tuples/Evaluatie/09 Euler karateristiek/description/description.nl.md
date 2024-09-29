De Eulerkarakteristiek $$\mathsf{\chi}$$ (*chi*), oorspronkelijk gedefinieerd voor veelvlakken door het wiskundig genie Leonard Euler, is een getal dat bepaalt in welke mate een veelvlak gaten, of dergelijke bevat.

Voor een niet-zelfdoorsnijdend (en niet-samengesteld) veelvlak is de Eulerkarateristiek steeds gelijk aan 2:

$$
\mathsf{\chi  = H - R + V = 2}
$$

Hierbij staat H voor het aantal hoekpunten, R voor het aantal ribben en V voor het aantal vlakken.

<div class="hidden-print">
    <div class="dodona-centered-group">
        <blockquote class="tiktok-embed" cite="https://www.tiktok.com/@reason4math/video/7349075481620253995" data-video-id="7349075481620253995" style="max-width: 605px;min-width: 325px;" > <section> <a target="_blank" title="@reason4math" href="https://www.tiktok.com/@reason4math?refer=embed">@reason4math</a> Visualization of Euler&#39;s polyhedron formula: V - E + F = 2 . <a title="mathematics" target="_blank" href="https://www.tiktok.com/tag/mathematics?refer=embed">#mathematics</a> <a title="math" target="_blank" href="https://www.tiktok.com/tag/math?refer=embed">#math</a> <a title="maths" target="_blank" href="https://www.tiktok.com/tag/maths?refer=embed">#maths</a> <a title="mathematik" target="_blank" href="https://www.tiktok.com/tag/mathematik?refer=embed">#mathematik</a> <a title="geometry" target="_blank" href="https://www.tiktok.com/tag/geometry?refer=embed">#geometry</a> <a title="geometria" target="_blank" href="https://www.tiktok.com/tag/geometria?refer=embed">#geometria</a> <a title="geometrie" target="_blank" href="https://www.tiktok.com/tag/geometrie?refer=embed">#geometrie</a> <a title="geometricart" target="_blank" href="https://www.tiktok.com/tag/geometricart?refer=embed">#geometricart</a> <a title="mathart" target="_blank" href="https://www.tiktok.com/tag/mathart?refer=embed">#mathart</a> <a title="euler" target="_blank" href="https://www.tiktok.com/tag/euler?refer=embed">#euler</a> <a title="polyhedron" target="_blank" href="https://www.tiktok.com/tag/polyhedron?refer=embed">#polyhedron</a> <a title="polygon" target="_blank" href="https://www.tiktok.com/tag/polygon?refer=embed">#polygon</a> <a title="mathtrick" target="_blank" href="https://www.tiktok.com/tag/mathtrick?refer=embed">#mathtrick</a> <a title="originalanimation" target="_blank" href="https://www.tiktok.com/tag/originalanimation?refer=embed">#originalanimation</a> <a title="stem" target="_blank" href="https://www.tiktok.com/tag/stem?refer=embed">#stem</a> <a title="stemtok" target="_blank" href="https://www.tiktok.com/tag/stemtok?refer=embed">#stemtok</a> <a title="mathtok" target="_blank" href="https://www.tiktok.com/tag/mathtok?refer=embed">#mathtok</a> <a target="_blank" title="♬ original sound  - Beau Janzen" href="https://www.tiktok.com/music/original-sound-Beau-Janzen-7349075501958351658?refer=embed">♬ original sound  - Beau Janzen</a> </section> </blockquote> <script async src="https://www.tiktok.com/embed.js"></script>
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
