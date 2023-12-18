package main

import (
	"fmt"
	"math/rand"
	"time"
)

type Name struct {
	names map[string]int
}

func (n *Name) addName(name string, result int) {
	n.names[name] = result
}

func (n *Name) saveNames() {
	// Здесь сохранение имен и результатов
}

func (n *Name) displayNames() {
	fmt.Println("Save name and results : ")
	for name, result := range n.names {
		fmt.Printf(" %s: %d\n", name, result)
	}
}

func main() {
	nameStorage := Name{names: make(map[string]int)}

	for {
		fmt.Print("\033[H\033[2J")
		nameStorage.displayNames()
		fmt.Println("\nBegin Game -->> ENTER")
		var input string
		fmt.Scanln(&input)
		if input == "n" {
			break
		}
		fmt.Print("What is your name ? \t")
		var name string
		fmt.Scanln(&name)
		fmt.Printf("\tHello , %s !\n", name)
		fmt.Print(name, ", up to what number ? , 1 up to ..")
		var kaze int
		fmt.Scanln(&kaze)
		if kaze != 0 {
			fmt.Printf("Guess the hidden number from 1 to %d\n", kaze)
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
					nameStorage.addName(name, result)
					nameStorage.saveNames()
					fmt.Println()
					nameStorage.displayNames()
					fmt.Println("Restart Game -> Enter")
					fmt.Scanln(&input)
					break
				} else {
					fmt.Println("Br-r-r")
					if x < sodi {
						fmt.Println("-> more")
					} else if x > sodi {
						fmt.Println("<- less")
					}
				}
			}
		}
	}
}
