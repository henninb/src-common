void find_prime_numbers() {
def list = 1..100
println list.findAll { x -> (2..Math.sqrt(x)).every { x % it != 0 } }
}
