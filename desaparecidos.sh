#!/bin/bash

# nomes que foram registados e aprovados em 2014, e que nao apareceram nem em 2015 nem em 2016
for desapareceu in $(
	for registado in $(
		for nome in $(grep ",S," nomes-aprovados-2014.csv|cut -d, -f1|awk '{print $1}'|sort -u); do
			echo -n "$nome: "; grep "^$nome," nomes-registados-2014.csv |wc -l;
			echo -n "$nome: "; grep "^$nome " nomes-registados-2014.csv |wc -l;
		done|grep -v " 0$"|cut -d: -f1|uniq
	); do
		echo -n "$registado: "; grep ^$registado, nomes-registados-2015.csv |wc -l;
	done|grep " 0$"|cut -d: -f1
); do
	echo -n "$desapareceu: ";grep ^$desapareceu, nomes-registados-2016.csv |wc -l;
done|grep " 0$" > nomes-desaparecidos

# ordenação dos nomes desaparecidos, por ordem de "mais registados" em 2014
for n in $(cat nomes-desaparecidos |cut -d: -f1); do
	a=$(grep "^$n," nomes-registados-2014.csv|cut -d, -f2| tr '\n' '+'); # nome simples (ex: "Maria,F")
	b=$(grep "^$n " nomes-registados-2014.csv|cut -d, -f2| tr '\n' '+'); # nomes composto (ex: "Maria Albertina,F")
	echo "$(echo $a"0+"$b"0"|bc) $n";
done|sort -n > nomes-desaparecidos-ordenados

