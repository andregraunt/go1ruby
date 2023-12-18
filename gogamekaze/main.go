package main

import (
	"fmt"
	"math/rand"
	"time"
)

type Name struct {
	names map[string]map[string]int
}

func (n *Name) addName(name string, result int, kaze int) {
	n.names[name] = map[string]int{"result": result, "kaze": kaze}
}

func (n *Name) saveNames() {
	// Here is where you would save the names and results
}

func (n *Name) displayNames() {
	fmt.Println("Save name and results : ")
	for name, data := range n.names {
		fmt.Printf("%s: (%d) times from (1 to %d)\n", name, data["result"], data["kaze"])
	}
}

func main() {
	nameStorage := Name{names: make(map[string]map[string]int)}

	for {
		fmt.Print("\033[H\033[2J")
		nameStorage.displayNames()
		fmt.Println("\n\tBegin Game -->> ENTER")
		var input string
		fmt.Scanln(&input)
		if input == "n" {
			break
		}
		fmt.Print("What is your name ? \t")
		var name string
		fmt.Scanln(&name)
		fmt.Printf("\n\tHello , %s ! \n", name)
		fmt.Printf("\n%s, up to what number ? , 1 up to ..", name)
		var kaze int
		fmt.Scanln(&kaze)
		if kaze != 0 {
			fmt.Printf("\nGuess the hidden number from 1 to %d\n", kaze)
			rand.Seed(time.Now().UnixNano())
			sodi := rand.Intn(kaze) + 1
			i := 0
			for {
				i++
				fmt.Print("\ngive a number : ")
				var x int
				fmt.Scanln(&x)
				fmt.Printf("\n\t Times - (%d)\n", i)
				if x == sodi {
					fmt.Println("\n\t V I C T O R Y !!")
					fmt.Printf("\n%s winner from %d times on number %d for %d\n", name, i, sodi, kaze)
					result := i
					nameStorage.addName(name, result, kaze)
					nameStorage.saveNames()
					fmt.Println()
					nameStorage.displayNames()
					fmt.Println()
					fmt.Println("Restart Game -> Enter")
					fmt.Scanln(&input)
					break
				} else {
					fmt.Println("Br-r-r")
					if x < sodi {
						fmt.Println("\n\t-->> more")
					} else if x > sodi {
						fmt.Println("\n<<-- less")
					}
				}
			}
		}
	}
	// Add the following line to add the name "kaze" and its corresponding value to the hash:
	// nameStorage.addName("kaze", "result", "kaze_value")
	nameStorage.addName("kaze", 0, 0)

	// Add the following line to display all the saved names:
	// nameStorage.displayNames()
}
