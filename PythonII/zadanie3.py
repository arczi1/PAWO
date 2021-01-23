# danie 3 / Wrapper
#  Zdefiniuj klasę, posiadającą atrybut `s` oraz metody `get`
# oraz `show`.
#  - Metoda `get` wczytuje dane i przypisuje do `s`.
#  - Metoda `show` wyświetla `s` (ale z literami
# zamienionymi na wielkie).
#  Sprawdź, czy działa poprawnie

class Klasa:
  
  def get(self):
    self.strk = input("Dane: ")
    print("Dane wczytane")

  def show(self):
    print(self.strk)
  
klasa = Klasa()
klasa.get()
klasa.show()

