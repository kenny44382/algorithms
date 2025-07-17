package main

import "fmt"

func CountingSort(slice []int) {
	if len(slice) < 1 {
		return
	}

	higher := slice[0]

	for index := 1; index < len(slice); index++ {
		if slice[index] > higher {
			higher = slice[index]
		}
	}

	var temp = make([]int, higher)

	for index := 0; index < len(slice); index++ {
		temp[slice[index]-1]++
	}

	for index := 1; index < len(temp); index++ {
		temp[index] += temp[index-1]
	}

	var temp2 = make([]int, len(slice))

	for index := 0; index < len(temp2); index++ {
		temp2[temp[slice[index]-1]-1] = slice[index]
		temp[slice[index]-1]--
	}

	for index := 0; index < len(temp2); index++ {
		slice[index] = temp2[index]
	}
}

func main() {
	slice := []int{9, 5, 8, 7, 3, 2, 1, 6, 4}
	fmt.Println("Slice:", slice)
	CountingSort(slice)
	fmt.Println("CountingSort:", slice)
}
