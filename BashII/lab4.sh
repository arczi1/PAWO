#1
#1.Napisz skrypt korzystajac z dzialan na ciagach znaków, który, dla podanego
#argumentu bedacego lancuchem znaków, wypisze ów lancuch po nastepujacych
#modyfikacjach:
#- zmiana pierwszego wystapienia "x" na "y",
#- zmiana wszystkich wystapien "a" na "b",
#- uciecie "." tylko z konca lancucha, jesli znak tam wystepuje.
    #!/bin/bash
    VAR${0} # var=$@ lub var=$1 i wszystko w "" lub var=$* ale on sklei po zajeciach gosciu wysle
    echo $VAR
    REMOVE_x=${VAR/x/y}
    echo
    REMOVE_a=${ }
################################################################################
#!/bin/bash

var=$*
var_remove_x=${var/x/y}
echo $var_remove_x

var_remove_a=${var//a/b}
echo $var_remove_a

var_remove_dot=${var_remove_a/%./}
echo $var_remove_dot

#2. 
#2 .Napisz potok poleceń (może być w skrypcie), który zamienia wszystkie nazwy
#plików w danym katalogu (bez podkatalogów) na małe litery, czyli wszystkie duże
#litery występujące w nazwach plików zostaną zamienione na małe, a małe litery
#pozostają oczywiście dalej małe. Skrypt powinien działać poprawnie na takich
#nazwach plików jak " ABC DEF", "-AbC aBc" i "--ABC DEF".

#!/usr/bin/env bash
rm -rf testowy
mkdir testowy
cd testowy
touch -- -ABc
touch -- ABc--
touch -- -ABc
touch -- --ABcA
touch -- ABCc
touch -- 'AS asd'
mkdir dir_1
mkdir dir_2
touch -- dir_1/-ABc
touch -- dir_1/ABc--
touch -- dir_1/-ABc
touch -- dir_1/--ABcA
touch -- dir_1/ABCc
touch -- dir_1/'AS asd'
touch -- dir_2/-ABc
touch -- dir_2/ABc--
touch -- dir_2/-ABc
touch -- dir_2/--ABcA
touch -- dir_2/ABCc
touch -- dir_2/'AS asd'

ls -l                   #wiecej informacji, rozmiar i kiedy modyfikowany 
ls -p                   #doda do nazwy katalogu "/" na koncu
find . -type f          # . lokalizator flaga -type mowi jakie chcemy typy 
find   -maxdepth 1 -mindepth 1 -type f #znajdujemy pliki bez ich podkatalogow 
tr A-Z a-z <<< "Hello"

 #ZLE\|/
 for file in $(find   -maxdepth 1 -mindepth 1 -type f -exec basename {} \; ); do 
        mv "$1/$file" "$1/${file,,}"  #chyba traktuje jako osobne wyrazy, a  tak nie powinno byc
                                        #bo mamy nazwy ze spacja 
                                         
 done    
    
 #DOBRZE
find  $1 -maxdepth 1 -mindepth 1 -type f -exec basename {} \; | while read file; do 
        mv "$1/$line" "$1/${line,,}"  #chyba traktuje jako osobne wyrazy, a  tak nie powinno byc
                                        #bo mamy nazwy ze spacja, trzeba bylo uzyc while 
                                         
 done         
 
################################################################################
#!/bin/bash

for file in $(find ${1} -maxdepth 1 -mindepth 1 -type f -exec basename {} \; ); do 
    mv $1$file ${file,,}
done

#!/bin/bash 

find ${1} -maxdepth 1 -mindepth 1 -type f -exec basename {} \; | while read file; do 
    mv "$1$file" "$1${file,,}"
done 

 

#3
#Edytuj skrypt z poprzedniego zadania, aby w nazwach pliku zamienial male
#litery na duze, a duze na male - "hEllO" powinno zmienic sie na "HeLLo".
 #!/bin/env bash
  
tr ['a-z'] ['A-Z'] <<< "HeLlo" 
tr a-zA-Z A-Za-z 

################################################################################
tr [:lower:] [:upper:] <<< "HeLLo"

find   -maxdepth 1 -mindepth 1 -type f -exec basename {} \; | tr a-zA-Z A-Za-z
                             #flaga -exec pozwala wykonac komende  na tym co wypluwa
                             # find  jak uzywamy exec to musi miec takie dziwne zakonczenie \; 
                             # ; oddziela komendy od siebie
find  $1 -maxdepth 1 -mindepth 1 -type f -exec basename {} \; | while read file; do 
        mv "$1/$line" "$1/${line~~}"    #cos mowili o tych tyldach ale chuj wie
        



#4.Napisz skrypt w Bashu, który pokazuje informacje o wszystkich procesach
#(podobne jak program ps). Wykorzystaj system plików procfs (standardowo w
#systemie Linux montowanym w katalogu /proc) do pobrania informacji o procesach
#np. cat /proc/1/status wyświetla informacje o procesie 1. Czy jesteśmy w stanie
#wyświetlić informację ile proces ma otwartych plików? Jeżeli tak to jak? Czy
#wymaga to jakichś uprawnień?

sudo ls -l fd | wc -l 
cat /proc/1/status | grep -i name 
cat /proc/1/status | grep -iw pid
cat /proc/1/status | grep -i state

cat /proc/1/status | grep -i "^name|^pid\|state" 


for $(find /proc -mindepth 1 -maxdepth 1 -type d -name "*[0-9]*"); do 
    cat ${file}/status | grep -i "^name|^pid\|state" | tr " \n  " " "
    echo " "
done 

################################################################################

ls /proc
ps aux #bedziemy pisac mini komende ps 
#wyciagamy nazwe i state i pip procesu 
cat /proc/1/status | grep -i name 
cat /proc/1/status | grep -iw pid    #-w wezmiemy tylko takie wystapienie,
                                    # jakie mozemy potraktowac jako wyraz a nie fragmet wyrazu 
cat /proc/1/status | grep -i state 

#zeby polaczyc musimy uzyg regexa 
 


cat /proc/1/status | grep -iw "name\|state\|pid" # \ pozwala na wyescapowanie tych pipow 
                                            #zeby nie traktowal ich doslownie tylko jako loop

cat /proc/*/status | egrep -iw "name|state|pid" # tak mozna albo flage -e
                                                #* akurat zadzialala bo w linii tej sa liczby??? 
      
#!/bin/bash   
                                       
find /proc -maxdepth 1 -mindepth 1 -type d -name [0-9]* | while read line; do
    cat /proc/*/status | egrep -iw "name|state|pid"
    echo 
done                                   

#5.Napisz skrypt w Bashu który dla każdego użytkownika systemu, wygeneruje raport
#w formacie:
#"
#Użytkownik: <użytkowni>
#Opis: <opis_użytkownika>
#Katalog domowy: <katalog_domowy_użytkownika>
#Powłoka: <powłoka_użytkownika>
#".
#Plik do którego ma zostać zapisny raport powinien byś podany jako paramter
#sryptu.
#Każdy raport ma zostać oddzielony od siebie dwoma pustymi liniami.
#Pamiętaj o sprawdzeniu praw dostępu do plików. (Skąd wziąć dane o każdym
#użytkowniku?)

echo $USER
echo $SHELL 
whoami
 
 #!/bin/bash
 
 cat /etd/passwd | cut -d ":" -f1,5,6,7 
 

