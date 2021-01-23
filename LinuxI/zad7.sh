#Zadanie 7
#1. Znajdź wszyskie katalogi w /usr/lib zawierające python w nazwie
#2. Znajdź wszyskie pliki w katalogu domowym znajdujące się na głębokości 2

#1.
find /usr/lib -type d -name "*python*" 

#2.
find ~/ -type f -maxdepth 2
