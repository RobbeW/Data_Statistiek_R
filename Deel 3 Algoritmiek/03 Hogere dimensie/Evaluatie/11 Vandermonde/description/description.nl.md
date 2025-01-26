Een Vandermonde-matrix, vernoemd naar de Franse wiskundige Alexandre-Théophile Vandermonde, is een matrix waarbij elke rij in deze matrix een meetkundige rij vormt.

Dat wil zeggen dat het een m × n matrix is van de vorm:

$$
\begin{pmatrix}
\sf 1 & \sf a_1 & \sf a_1^2 & \sf a_1^3 & \cdots & \sf a_1^{n-1}\\
\sf 1 & \sf a_2 & \sf a_2^2 & \sf a_2^3 & \cdots & \sf a_2^{n-1}\\
\sf 1 & \sf a_3 & \sf a_3^2 & \sf a_3^3 & \cdots & \sf a_3^{n-1}\\
\vdots & \vdots & \vdots & \vdots & \ddots & \vdots\\
\sf 1 & \sf a_m & \sf a_m^2 & \sf a_m^3 & \cdots & \sf a_m^{n-1}\\
\end{pmatrix}
$$

waarbij $$\mathsf{a_i}$$ telkens reële getallen zijn.

## Gevraagd
Schrijf een functie `vandermonde(waarden, n)` dat gegeven een lijst met `waarden` (de verschillende $$\mathsf{a_i}$$) en de lengte `n` de bijbehorende Vandermonde matrix bepaalt.

Bestudeer zorgvuldig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> vandermonde([1, 2, 3], 4)
[[ 1, 1, 1,  1],
 [ 1, 2, 4,  8],
 [ 1, 3, 9, 27]]
```

```python
>>> vandermonde([5, 2, 7, 4], 3)
[[ 1, 5, 25],
 [ 1, 2,  4],
 [ 1, 7, 49],
 [ 1, 4, 16]]
```