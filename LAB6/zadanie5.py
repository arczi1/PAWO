# Zadanie 5 / mtime
#  Napisz program, wyświetlający pliki starsze niż N dni w
# podanym katalogu.

import os, time

days = input("N: ")
path = r'D:\emp' # o co chodziz ta sciezka??? 
now = time.time()

for root, dirs, files in os.walk(path):
  for name in files: 
    filename = os.path.join(root.name) 
    if(os.stat(filename),st_mtime < now - (days * 86400)): 
      print(filename)
