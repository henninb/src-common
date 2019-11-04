package main
import "os"
import "fmt"

func main() {
    args := os.Args
    argc := len(args)
    var list []int = []int{10, 2, 4, 1, 6, 5, 8, 7, 3, 9}

    if argc != 1 {
      fmt.Println(args[0] + " <noargs>")
      os.Exit(1)
    }

    fmt.Println(list)
    fmt.Println(bubble_sort(list))
}

func bubble_sort(arr[] int)[]int {
    for i:=1; i< len(arr); i++ {
        for j:=0; j < len(arr)-i; j++ {
            if (arr[j] > arr[j+1]) {
                arr[j], arr[j+1] = arr[j+1], arr[j]
            }
        }
    }
    return arr
}

func bubblesort(a []int) {
    for itemCount := len(a) - 1; ; itemCount-- {
        hasChanged := false
        for index := 0; index < itemCount; index++ {
            if a[index] > a[index+1] {
                a[index], a[index+1] = a[index+1], a[index]
                hasChanged = true
            }
        }
        if hasChanged == false {
            break
        }
    }
}
