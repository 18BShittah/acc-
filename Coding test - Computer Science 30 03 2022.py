import math
#1

a = 0.723
b = 1.34

aver = (a+b)
aver1 = (aver/2)

power = (a**b)

print("average is ",aver1,)
print("the remainder is ",power,)

#2

r = float(input("Type in the height of your cylinder: "))
h = float(input("Type in the radius of your cylinder: "))
def volume(r,h):
    volume = int(math.pi*r**2*h)
    return volume
print(volume(r,h))

#3

boom1 = input("Type in your sentence: ")
boom2 = input("Type in your sentence: ")

def str_comp(boom1,boom2):
    return boom1==boom2
print(str_comp(boom1,boom2))

#4
z = int(input("Type in your the max number you want to count to: "))
for i in range (1 ,z):
    if i % 2 ==1:
        print(i)
        


#5
f1 = open("readme.txt","r")
y = ("aeiouAEIOU")
k = "  "
for i in f1.readlines():
    for x in i:
        if x in y:
            k+=x
print(k)



#6
n = float(input("type in number: "))

def recursive(n):
    if n == 0:
        return 0
    else:
        return n + recursive(n - 1)
print(recursive(n))

    







