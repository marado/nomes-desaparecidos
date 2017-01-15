# Nomes Portugueses que perderam popularidade

Este script é uma pequena parvoíce, só para mostrar que quanto há dados
públicos, há sempre ideias estranhas do que fazer com eles.

Em particular, este script olha para a lista de nomes registados em Portugal
para os anos em que há registo público (2014, 2015 e 2016) e gera uma lista de
nomes que foram registados em 2014 (e quantas pessoas foram registadas com esse
nome), mas que já não foram usados em novos registos, nem em 2015 nem em 2016.

Spoiler: apesar de continuarem a haver Kevin's, em 2014 houve 14 Quévin's, mas
nenhum em 2015 ou 2016.

## Vamos ao que interessa!

Este repositório contém vários ficheiros:
* `desaparecidos.sh` é o script que foi executado para geral a lista de nomes
  desaparecidos.
* `nomes-desaparecidos` é uma lista pouco útil, dos nomes desaparecidos, mas
* `nomes-desaparecidos-ordenados` é uma lista de nomes desaparecidos, com o
  número de pessoas com esse nome que foram registadas com ele em 2014. Sim,
  Quévin foi o mais popular dos desaparecidos.

## De onde vieram os dados, e como funciona o script?

Estes dados são compilados na Central de Dados e disponíveis para quem quiser
fazer deles o que quiser.

Os dados de 2016 ainda não estão lá mas vão estar em breve, pelo que este
script usa uma versão ainda não publicada, e que pode ser encontrada em
https://github.com/marado/nomes_proprios/ .

Para executar o script, é preciso ter os dados desse repositório (em
particular, os CSVs que estão na directoria `data`) no mesmo directório do
script. Depois é só executá-lo, e as listas são geradas.
