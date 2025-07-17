package main

import "fmt"

func HeapSort1(slice []int) {

	length := len(slice)
	index := length / 2
	var father int
	var child int
	var temp int

	for {

		if index > 0 {
			index--
			temp = slice[index]
		} else {
			length--

			if length == 0 {
				return
			}

			temp = slice[length]
			slice[length] = slice[0]
		}

		father = index
		child = index*2 + 1

		for child < length {
			if child+1 < length && slice[child+1] > slice[child] {
				child++
			}

			if slice[child] > temp {
				slice[father] = slice[child]
				father = child
				child = father*2 + 1
			} else {
				break
			}
		}

		slice[father] = temp
	}
}

func HeapSort2(slice []int) {

	for index := len(slice)/2 - 1; index >= 0; index-- {
		clearTree(slice, len(slice), index)
	}

	for index := len(slice) - 1; index >= 0; index-- {
		slice[index], slice[0] = slice[0], slice[index]

		clearTree(slice, index, 0)
	}
}

func clearTree(slice []int, length int, position int) {

	largest := position
	left := 2*position + 1
	right := left + 1

	if left < length && slice[left] > slice[largest] {
		largest = left
	}

	if right < length && slice[right] > slice[largest] {
		largest = right
	}

	if largest != position {
		slice[position], slice[largest] = slice[largest], slice[position]

		clearTree(slice, length, largest)
	}
}

func main() {
	slice := []int{6, 8, 7, 9, 1, 5, 4, 2, 3}
	fmt.Println("Slice:", slice)
	HeapSort1(slice)
	fmt.Println("HeapSort1:", slice)

	slice = []int{6, 8, 7, 9, 1, 5, 4, 2, 3}
	fmt.Println("Slice:", slice)
	HeapSort2(slice)
	fmt.Println("HeapSort2:", slice)
}
