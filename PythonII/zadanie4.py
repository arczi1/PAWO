# Zadanie 4 / Rozszerzenia
#  Napisz program, zmieniający rozszerzenia plików w
# katalogu. Program ma zmieniać rozszerzenie `.text` na `.txt`.


import os, sys

for filename in os.listdir(os.path.dirname(os.path.abspath(__file__))):
  base_file, ext = os.path.splitext(filename)
  if ext == ".text":
    os.rename(filename, base_file + ".txt")
