var a = [10, 2, 4, 1, 6, 5, 8, 7, 3, 9];

function bubbleSort(a) {
  var swapped;
  do {
    swapped = false;
    for (var i=0; i < a.length-1; i++) {
      if (a[i] > a[i+1]) {
        var temp = a[i];
        a[i] = a[i+1];
        a[i+1] = temp;
        swapped = true;
      }
    }
  } while (swapped);
}

function main() {
  console.log(a);
  bubbleSort(a);
  console.log(a);
}
main()

