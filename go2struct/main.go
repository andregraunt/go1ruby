package main

import (
	"fmt"
	"math/rand"
)

func main() {

	// first := 100
	// second := &first

	// first++
	// *second++
	first := 100
	second := &first
	n := 2
	first++
	*second++
	c := int(*second + n)

	fmt.Println("first:", first)
	fmt.Println("second:", *second)
	fmt.Println(c)
	fmt.Println(rand.Int())

}
