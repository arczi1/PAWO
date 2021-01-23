#Zadanie 1
#1. Wyświetl zmienne środowiskowe zaczynające się od litery X
#2. Wyświetl nazwę użytkownika, który jest aktualnie zalogowany

#1. 

env | grep [X] #or
env | grep '^X'

#2.
echo $USER #or
whoami