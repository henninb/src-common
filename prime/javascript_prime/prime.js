function isPrime( number) {
    for (var idx_i=2; idx_i < number; idx_i++) {
        if (number % idx_i == 0 && idx_i != number) {
          return false;
        }
    }
    return true;
}

console.log(isPrime(97));
