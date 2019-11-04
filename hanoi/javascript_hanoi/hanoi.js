function hanoi(n, a, b, c) {
  if (n > 0) {
    hanoi(n-1, a, c, b);
    console.log("Move disk from " + a + " to " + c);
    hanoi(n-1, b, a, c);
  }
}
hanoi(3, "A", "B", "C");
