## Vectoren versus lijsten
Het viel je in vorige opgave misschien op, maar we slaan onze data in R op via **vectoren**. Een nieuw soort **datatype** dat in eerste instantie lijkt op **lijsten** binnen **Python**, maar ze zijn verschillend! 

Vectoren in R en lijsten in Python dienen **verschillende doelen** en hebben **verschillende kenmerken**. Laten we eens kijken waarom vectoren in R worden gebruikt en hoe ze zich verhouden tot de lijsten in Python:

### Vectoren in R:
1. **Uniformiteit**: Een van de primaire kenmerken van vectoren in R is dat ze homogeen zijn, wat betekent dat ze elementen van hetzelfde gegevenstype bevatten. Een numerieke vector zal bijvoorbeeld alleen numerieke elementen bevatten en een tekenvector alleen tekenreeksen.
2. **Efficiëntie**: Bewerkingen op vectoren in R zijn sterk geoptimaliseerd en kunnen zeer snel zijn door hun uniforme aard. Hierdoor kunnen bewerkingen element per element worden toegepast zonder elk element op type te controleren.
3. **Grondlegging van de gegevensstructuur van R**: Vectoren zijn een fundamentele gegevensstructuur in R. Zelfs enkelvoudige getallen of strings in R zijn technisch gezien vectoren van lengte één. 
4. **Functionaliteit**: Veel functies in R zijn ontworpen om te werken op vectoren, waardoor beknopte en efficiënte code mogelijk is. Bijvoorbeeld, bewerkingen zoals `mean()`, `sum()`, of `max()` kunnen direct worden toegepast op vectoren.
5. **Samenhang met statistische bewerkingen**: Gezien de statistische oriëntatie van R, maken vectoren eenvoudige en efficiënte berekeningen op gegevensreeksen mogelijk.


### Lijsten in Python:
1. **Heterogeniteit**: Lijsten in Python kunnen items van verschillende gegevenstypen bevatten. Je kunt een integer, string, float en zelfs een andere lijst in dezelfde lijst hebben.
2. **Veelzijdigheid**: Omdat ze gemengde types kunnen bevatten, zijn lijsten in Python erg flexibel en worden ze gebruikt voor een breed scala aan doeleinden.
3. **Manipulatie**: Python-lijsten hebben methoden om items toe te voegen, te verwijderen en te wijzigen, naast andere bewerkingen.

### Vergelijking met lijsten in R:
R heeft ook een datastructuur met de naam "lijst", die beter vergelijkbaar is met de lijst van Python. R's lijsten kunnen elementen van verschillende typen bevatten (net als Python's lijsten), waardoor ze flexibeler zijn dan vectoren, maar ten koste gaan van enkele van de efficiëntievoordelen van vectoren.

{: .callout.callout-info}
>### Samengevat:
>* Vectoren in R worden gebruikt voor hun **efficiëntie en uniformiteit**, vooral voor statistische bewerkingen.
>* Lijsten in Python zijn **veelzijdige verzamelingen** die **gemengde gegevenstypen** kunnen bevatten en eenvoudig veranderd kunnen worden. 
