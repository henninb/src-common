
#fibonacci(0)                            # 1
#fibonacci(1)                            # 1
#fibonacci(2)                            # 2
##Fibonacci(0:3)                          # 0 1 1 2
#
#
## Golden ratio
#F <- Fibonacci(1:25)                    # ... 75025 121393
#f25 <- F[25]/F[24]                      #     1.618033989
#phi <- (sqrt(5) + 1)/2
#abs(f25 - phi)                          # 7.945178e-11
#
## Fibonacci numbers without iteration
#fibo <- function(n) {
#  phi <- (sqrt(5) + 1)/2
#  fib <- (phi^(n+1) - (1-phi)^(n+1)) / (2*phi - 1)
#  round(fib)
#}

#n1 = 0
#n2 = 1
#count = 2
#
#nterms = 24
#
#while(count < nterms) {
#            nth = n1 + n2
#            print(nth)
#            # update values
#            n1 = n2
#            n2 = nth
#            count = count + 1
#        }
