
# Zadanie 1 / Sortowanie
#  Napisz program, sortujący sekwencję wyrazów oddzielonych
# przecinkiem.
#  input: "hello,world,ala ma kota, john"
#  output: " john,ala ma kota,hello,world"

napis = "hello,world,ala ma kota, john"

listanapisow = napis.split(",")
listanapisow.sort()

string = ""

for i in listanapisow:
  string = string + i + ","

string = string[:-1] #usuwa ostatni znak czyli ,
print(string)
