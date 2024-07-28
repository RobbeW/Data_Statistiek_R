De **rij van Fibonacci** is genoemd naar Leonardo van Pisa, bijgenaamd Fibonacci. Hij noemt de rij in zijn boek Liber abaci, Boek over rekenen, uit 1202. De rij blijkt interessante eigenschappen te bezitten en verbanden te hebben met onder andere de <a href="https://nl.wikipedia.org/wiki/Gulden_snede" target="_blank">gulden snede</a>.

De rij is gedefinieerd als startende met de getallen 1, 1 en nadien telkens de som van de vorige twee getallen. Er geldt dus voor elk element $$a_i$$ (met $$i \geqslant3 $$):

$$
  a_i = a_{i-1} + a_{i-2}
$$

De rij begint dus als volgt: 1, 1, 2, 3, 5, 8, 13, 21, 34, ...

## Gevraagd

Maak een functie `fibonacci(n)` waarbij `n` het rangnummer voorstelt. Zo geldt er dat `fibonacci(4)` overeenkomt met het getal 3.
 
{: .callout.callout-info}
>#### Tips
>
> - Gebruik een `for` lus;
> - Werk enkel met die lus indien `n` groter is dan 2 en gebruik dus `i in 3:n` als iteratievoorwaarde;
> - Laat de rij telkens aangroeien via `rij <- c(rij, nieuw_getal)`.