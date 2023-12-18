class Name:
    def __init__(self):
        self.names = {}

    def add_name(self, name, result):
        self.names[name] = result

    def save_names(self):
        # Здесь сохранение имен и результатов
        pass

    def display_names(self):
        print("Save name and results : ")
        for name, result in self.names.items():
            print(f" {name}: {result} ")


name_storage = Name()

while True:
    print("\033[H\033[2J")
    name_storage.display_names()
    print("\nBegin Game -->> ENTER")
    if input().lower() == "n":
        break
    print("What is your name ? \t")
    name = input().strip()
    print(f"\tHello , {name} ! ")
    print(f"{name}, up to what number ? , 1 up to ..")
    kaze = int(input().strip())
    if kaze != 0:
        print(f"Guess the hidden number from 1 to {kaze}")
        sodi = randrange(1, kaze + 1)
        i = 0
        while True:
            i += 1
            print("\ngive a number : ")
            x = int(input().strip())
            print(f"\n\t Times - ({i})\n")
            if x == sodi:
                print("\n\t V I C T O R Y !!\n")
                print(f"\n{name} winner from {i} times on number {sodi} for {kaze}")
                result = i
                name_storage.add_name(name, result)
                name_storage.save_names()
                print()
                name_storage.display_names()
                print("Restart Game -> Enter")
                input()
                break
            else:
                print("Br-r-r")
                if x < sodi:
                    print("-> more")
                elif x > sodi:
                    print("<- less")
