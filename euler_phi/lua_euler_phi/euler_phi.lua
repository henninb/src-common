function euler_phi( n )
  remainder = n;
  phi = n;
  odd = 0;

  if( n == 0 ) then
    return 0;
  end
  if( (remainder % 2) == 0 ) then
     phi = phi / 2;
     while( (remainder % 2) == 0 ) do
       remainder = remainder / 2;
     end
  end

  odd = 3;

  while (odd <= remainder ) do
    if (remainder % odd == 0 ) then
      phi = phi * (odd - 1) / odd;
      while( (remainder % odd) == 0 ) do
        remainder = remainder / odd;
      end
    end
    odd = odd + 2;
  end
  return phi;
end

function main()
  for idx_i=1,24,1
  do
    print("euler_phi(" .. idx_i .. ")=<" .. tostring(euler_phi(idx_i)) .. ">")
  end
end

main()
