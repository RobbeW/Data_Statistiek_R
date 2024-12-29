Bij het rekenen met matrices spreekt men vaak over een n × m matrix. Deze heeft n rijen en m kolommen, men spreekt ook wel over de dimensies van de matrix.

Hieronder zie je een voorbeeld van een 2 × 3 matrix:

$$
\mathsf{\begin{pmatrix}\sf 1 & \sf 2 & \sf 4\\ \sf 8 & \sf 9 & \sf 6\end{pmatrix}}
$$


## Gevraagd
Schrijf een functie `dimensie(matrix)` die het aantal rijen en het aantal kolommen van de matrix bepaalt. Het resultaat is een tuple met als eerste element het aantal rijen en als tweede element het aantal kolommen.

#### Voorbeeld

```python
>>> dimensie([[1, 2, 4], 
              [8, 9, 6]])
(2, 3)
```