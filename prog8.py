import random
num=8
guess=int(input("guess"))
if guess not in range(1,10):
    print("guess num btw 1 to 9")
elif guess<num:
    print("you hav guessed too low")
elif guess>num:
    print("you hav guessed too high")
else:
    print("you hav guessed it right")

