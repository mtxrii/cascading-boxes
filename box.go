package main

import "fmt"

func main() {
	var x int = 4
	
	fmt.Print("+")
	for i := 0; i < x; i++ {
		fmt.Println("-+")
		for j := 0; j < i; j++ {
			fmt.Print("  ")
		}
		
		fmt.Println("| |")
		for j := 0; j < i; j++ {
			fmt.Print("  ")
		}
		
		fmt.Print("+-+")
	}
}
