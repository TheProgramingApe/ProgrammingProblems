from random import randint as rint

mode = int(input('''Select dificulty
1. 1 - 10
2. 1 - 100
3. 1 - 1000
'''))

if mode is 1:
    secret_num = rint(1, 10)
elif mode is 2:
    secret_num = rint(1, 100)
elif mode is 3:
    secret_num = rint(1, 1000)
else:   
    secret_num = rint(1, 100)

guess_count = 0

print("Find the secret number X")

def play():
    global guess_count
    x = int(input("Make a guess: "))
    guess_count += 1
    if x > secret_num:
        print("Too big")
        play()
    elif x < secret_num:
        print("Too small")
        play()
    else:
        print("Correct!")
        print("Number of guesses:", guess_count)
play()