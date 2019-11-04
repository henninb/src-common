function luhn(n)
  n=string.reverse(n)
  print(n)
  local s1=0
  for i=1,n:len(),2 do
    s1=s1+n:sub(i,i)
  end
  local s2=0
  for i=2,n:len(),2 do
    local doubled=n:sub(i,i)*2
    doubled=string.gsub(doubled,'(%d)(%d)',function(a,b)return a+b end)
    s2=s2+doubled
  end
  print(s1)
  print(s2)
  local total=s1+s2
  if total%10==0 then
    return true
  end
  return false
end

print(luhn'49927398716')
print(luhn'49927398717')
print(luhn'1234567812345678')
print(luhn'1234567812345670')
