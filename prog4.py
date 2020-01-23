string=input("enter the sentence :")
d=l=0
for c in string:
    if c.isdigit():
      d=d+1
    else:
      l=l+1
print("digits",d)
print("letters",l)
