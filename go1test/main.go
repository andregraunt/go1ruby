package main

import "fmt"

func factorial(n int) int {
	result := 1
	for i := n; i >= 1; i-- {
		result *= i
	}
	return result
}

func main() {

	var i int = 18
	var pi *int
	var b *int

	pi = &i
	*pi = 27

	b = &i
	*b = 77

	// i = *b

	// pi = &b

	fmt.Println(i)
	fmt.Println(&i)
	// fmt.Println(*i)
	fmt.Println(pi)
	fmt.Println(&pi)
	fmt.Println(*pi)
	fmt.Println(b)
	fmt.Println(&b)
	fmt.Println(*b)

	// for {
	// 	fmt.Print("\033[H\033[2J")
	// 	// fmt.Println("Your number?")
	// 	// var number int
	// 	// fmt.Scanln(&number)
	// 	number := 5
	// 	result := factorial(number)
	// 	fmt.Printf("Факториал числа %d равен %d.\n", number, result)
	// 	time.Sleep(500 * time.Millisecond)
	// }
	// for {
	// 	fmt.Print("\033[H\033[2J")
	// 	// Seed the random number generator with the current time
	// 	rand.Seed(time.Now().UnixNano())

	// 	// Generate a random number between 1 and 50
	// 	randomNumber := rand.Intn(9999) + 1

	// 	fmt.Println(randomNumber)
	// 	time.Sleep(125 * time.Millisecond)
	// }
}
