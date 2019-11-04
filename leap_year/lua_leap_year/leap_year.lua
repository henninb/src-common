function isLeapYear(year)
  return year%4==0 and (year%100~=0 or year%400==0)
end

for idx_i=1999,2100,1
do
  print("isLeapYear(" .. idx_i .. ")=<" .. tostring(isLeapYear(idx_i)) .. ">")
end
