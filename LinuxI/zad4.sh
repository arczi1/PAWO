#Zadanie 4
#1. Utwórz strukturę katalogów nokia/wazne/lab1 za pomocą jednego polecenia
#2. W utworzonym katalogu stwórz pliki tekstowe fizyka.txt , matematyka.txt , informatyka.txt
#3. W utworzonym katalogu utwórz katalog lab2
#4. Przenieś katalog lab2 do nokia/ważne
#5. Skopiuj plik informatyka.txt do katalogu lab2
#6. Wyświetl całą strukturę (drzewo plików) katalogu nokia
#7. Usuń wszystkie pliki znajdujące się w nokia/wazne/lab1
#8. Usuń katalog nokia/wazne i jego zawartość za pomocą jednego polecenia


#1
mkdir -p nokia/wazne/lab1

#2
cd nokia/wazne/lab1
touch matematyka.txt #or

touch nokia/wazne/lab1 fizyka.txt
touch nokia/wazne/lab1 informatyka.txt

#3
mkdir nokia/wazne/lab2

#4
# -v - Print the name of each file before moving it.
mv -v nokia/wazne/lab1/lab2 nokia/wazne

#5
cp nokia/wazne/informatyka.txt nokia/wazne/lab2/ -v

#6
ls -R nokia

#7
rm -rv nokia/wazne/lab1/* 

#8
rm -rfv nokia/wazne/lab1

