# Zadanie 6 / "Częstotliwość wyrazów"
#  Napisz program, który policzy częstotliwość wyrazów przy
# użyciu klasy collections.Counter

from collections import Counter

list = ['apple', 'egg', 'apple', 'banana', 'egg']
counts = Counter(list) 
print(counts)
