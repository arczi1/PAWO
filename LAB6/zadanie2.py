# Zadanie 2 / Generator
#  Napisz program, generujący losowy ciąg znaków o zadanej
# długości.
#  Hint: random.sample
import random, string, math

dlugosc = input("Dlugosc: ")
letters = string.ascii_lowercase

ascii_len = len(string.ascii_lowercase)
 

intdlugosc = int(dlugosc)

if intdlugosc > ascii_len:
  tmp = math.ceil(intdlugosc/len(string.ascii_lowercase))
  letters = letters * tmp
print("".join(random.sample(letters, intdlugosc)))

