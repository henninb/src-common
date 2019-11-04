       !comment
       program example
           integer :: a
           ! compute factorials
           do n = 1, 10
             !a = example_function(2.0)
             !a = Factorial(1)
             print*, "example_function(", n, ")=<", 1, ">"
           end do
       end program example

       integer function example_function(x)
       !integer  :: x
       !integer :: example_function
       example_function = x
       return
       end function example_function

!-----Factorial------------------------------------------------------
!
!  Function to calculate factorials resursively
!
!---------------------------------------------------------------------
      recursive function Factorial(n)  RESULT(Fact)

      IMPLICIT NONE
      INTEGER :: Fact
      INTEGER, INTENT(IN) :: n

      IF (n == 0) THEN
        Fact = 1
      ELSE
        Fact = n * Factorial(n-1)
      END IF
      END FUNCTION Factorial
