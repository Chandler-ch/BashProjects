#!/bin/bash
c="./_klassen/ap22c.txt"
rm -rdf $c
echo "Weinrich" >> $c
echo "Mohler" >> $c
echo "Anna" >> $c
echo "Suhler" >> $c
echo "Martin" >> $c
echo "Sarah" >> $c
echo "Stefan" >> $c

d="./_klassen/ap22d.txt"
rm -rdf $d
echo "Richwein" >> $d
echo "Lermoh" >> $d
echo "Anon" >> $d
echo "Lersuh" >> $d
echo "Tinmar" >> $d
echo "Rahsa" >> $d
echo "Fanste" >> $d

t="_templates"
n="Datei"
rm -rdf $t
mkdir $t
cd $t
touch ${n}1.txt
touch ${n}2.pdf
touch ${n}3.docx
