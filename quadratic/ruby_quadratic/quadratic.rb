#PennyBoki @ </dream.in.code>
puts 'Enter the coefficients'
puts 'Enter a: '
STDOUT.flush
a=gets.chomp.to_f                                 # user enters the coefficient a
puts 'Enter b: '
STDOUT.flush
b=gets.chomp.to_f                                 # user enters the coefficient b
puts 'Enter c: '
STDOUT.flush
c=gets.chomp.to_f                                 # user enters the coefficient c

D = b*b -4*a*c                                     # D is the discriminant

if D>=0                                                # if the discriminant is positive or 0
  x1=(-b-Math.sqrt(D))/(2*a)                 # x1 is the first solution
  x2=(-b+Math.sqrt(D))/(2*a)                # x2 is the second solution
  puts 'x1: '+x1.to_s+' x2: '+x2.to_s  # display the solutions
  else                                                  # if the discriminant is negative
    x1=(-b)/(2*a)                                 # x1 is the real number of a complex number
    x2=(Math.sqrt(D*(-1)))/(2*a)           # x2 is the imaginary number of a complex number
    puts 'x1: '+x1.to_s+'-i'+x2.to_s    # display the first solution
    puts 'x2: '+x1.to_s+'+i'+x2.to_s    # display the second solution
  end
