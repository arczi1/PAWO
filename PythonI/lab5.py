name = input("POdaj imie:")
age = int(input("Podaj wiek:")
#print(f"{name} za 50 lat bedzie miala {age+50} lat")
#print("{} za 50 lat ")


#2
print('Liczba przysta') if int(input('Podaj liczbe:'))%2 == 0 else print('Liczba nieparzysta')


#3 or list comprehension
def func(list, num):
    list_return = []
    for x in list: 
      if x > num:
        list_return.append(x)
    return list_return

# def func2(list1, num): 
#   for x in range(len(list1)-1):
#     if list1[x] <= num:
#         list1.remove(list1[x])
#     return list1

def func3(list1, num):
    return [x for x in list1 if x > num] 
    
list=[1, 2, 44, 321, 32]
print(func(lista,20))

#4 
def fun(lista):
    sk = (l[0], l[-1])
    return sk 

#5
def fib(n):
  if n <= 1:
    return 1
  else:
    return(fib(n-1) + fib(n-2))
    
nterms = input("podaj liczbe: ")

if nterms <= 0:
    print("Podaj dodatnia liczbe")
else: 
  for  i in range(nterms): 
    print(fib(i))
    
 

#6
def reverse(string): 
  return " ".join(string.split()[::-1])
print(reverse('Python jest super'))

#7 
def uro(duro):
  imie = input("podaj imie: "))
  for i in duro.keys(): 
    if i ==imie:
      print(duro[i])

duro = {"Marcin" : "01,12", "Wojtek": "1.02"}
uro(duro)
#7
znajomi = {'Janek' : '5.3.1998'}
wybor = input('Podaj imie znajomego')
print(wybor, ': ', znajomi.get(wybor))


#8
d = {
  "mata": 1, 
  "przyrka" : 4
}

with open('file', 'w') as f: 
  for key, val in d.terms():
    f.write(f"{key} - {val}\n")
    
with open('file', 'r') as f: 
  print(f.read())
