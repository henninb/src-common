-- comments

function date_utc()
  local year = os.date('!%Y')
  local month = os.date('!%m')
  local day = os.date('!%d')
  local hour = os.date('!%H')
  local min = os.date('!%M')
  local sec = os.date('!%S')
  print(("utc=<%02d-%02d-%02d %02d:%02d:%02d>"):format(year, month, day, hour, min, sec))
end

function date_today()
  if (os.date("%A") == "Monday") then
    --print("It's Monday")
  end
  if (os.date("*t").wday == 1) then
    --print("It's Monday")
  end

  local year = os.date('%Y')
  local month = os.date('%m')
  local day = os.date('%d')
  local hour = os.date('%H')
  local min = os.date('%M')
  local sec = os.date('%S')
  print(("local=<%02d-%02d-%02d %02d:%02d:%02d>"):format(year, month, day, hour, min, sec))
end

function main()
  date_today()
  date_utc()
end

main()
