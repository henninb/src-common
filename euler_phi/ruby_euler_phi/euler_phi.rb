def euler_phi_new( n )
  return rec_for_loop(n, n)
end

def rec_for_loop( n, x )
  if( n == 0 ) then
    return 0
  else
    if( is_coprime(x, n) == true ) then
      return 1 + rec_for_loop(n - 1, x)
    else
      return 0 + rec_for_loop(n - 1, x)
    end
  end
end

def is_coprime(a, b)
  return r_gcd(a,b) == 1
end

def r_gcd(a, b)
  if( b == 0 ) then
    return a
  else
    return r_gcd(b, (a % b))
  end
end

def euler_phi(n)
  remainder = n
  phi = n
  odd = 0

  if ( n == 0 ) then
    return 0
  end
  if( (remainder % 2) == 0 ) then
     phi = phi / 2
     while( (remainder % 2) == 0 )
       remainder = remainder / 2
     end
  end

  odd = 3

  while (odd <= remainder )
    if (remainder % odd == 0 ) then
      phi = phi * (odd - 1) / odd
      while( (remainder % odd) == 0 )
        remainder = remainder / odd
      end
    end
    odd = odd + 2
  end
  return phi
end

def main()
  if ARGV.length != 0 then
    puts "Usage: #{$0} <noargs>"
    exit(1)
  end
  for idx_i in 1..24
   puts "euler_phi(#{idx_i})=<#{euler_phi(idx_i)}>"
   puts "euler_phi_new(#{idx_i})=<#{euler_phi_new(idx_i)}>"
  end
end

main()
