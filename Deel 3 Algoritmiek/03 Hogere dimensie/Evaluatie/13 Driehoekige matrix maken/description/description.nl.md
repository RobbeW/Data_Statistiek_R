## Gevraagd
Schrijf een functie `driehoekig(n)` die een vierkante n × n matrix maakt van onderstaande vorm. Hierbij stelt `n` het aantal rijen en kolommen voor. In dit voorbeeld heeft n dus de waarde 5.

$$
\begin{pmatrix}
\sf 0 & \sf 0 & \sf 0 & \sf 0 & \sf 1\\
\sf 0 & \sf 0 & \sf 0 & \sf 1 & \sf 2\\
\sf 0 & \sf 0 & \sf 1 & \sf 2 & \sf 3\\
\sf 0 & \sf 1 & \sf 2 & \sf 3 & \sf 4\\
\sf 1 & \sf 2 & \sf 3 & \sf 4 & \sf 5\\
\end{pmatrix}
$$

#### Voorbeeld

```python
>>> driehoekig(5)
[[ 0, 0, 0, 0, 1],
 [ 0, 0, 0, 1, 2],
 [ 0, 0, 1, 2, 3],
 [ 0, 1, 2, 3, 4]
 [ 1, 2, 3, 4, 5]]
```
