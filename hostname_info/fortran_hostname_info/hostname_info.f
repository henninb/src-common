       program hostname_info
           character(len=128) :: name
           call hostnm(name)
           print *, name
       end program hostname_info
