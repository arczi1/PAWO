#Zadanie 6
#1. W pliku /etc/passwd mozna znaleźć pewne informacje dotyczące kont użytkowników. Wyświetl jego
zawartość.
#2. Skopiuj plik /etc/passwd do swojego katalogu użytkownika
#3. Ze skopiowanego pliku wyświetl tylko nazwy kont (pierwsza kolumna) posortowane alfabetycznie
#4. Ze skopiowanego pliku wyświetl tylko przypisane do kont powłoki. Usuń duplikaty.
#5. Ze skopiowanego pliku wyświetl linię zawierającą twoją nazwę użytkownika.
#6. W skopiowanym pliku zmień powłokę swojego użytkownika na /bin/dash

#1
cat /etc/passwd

#2
cat /etc/passwd > ~/passwd

#3
cat passwd | cut -d ':' -f 1 | sort
awk -F ':' '{print $1}' passwd | sort

#4
cat passwd | cut -d : -f 7 | sort | uniq
cat passwd | cut -d : -f 7 sort -u 
awk -F ':' '{print $7}' passwd | sort -u 
awk -F ':' '{print $NF}' passwd | sort -u 

#5
cat passwd | grep $USER
grep $USER passwd 

#6
sed -i '/kornel/s/bash/dash/g' passwd
sed -i 's/\/bin/\bash/\dash/g' passwd