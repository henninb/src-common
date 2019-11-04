Many Unix systems store epoch dates as a signed 32-bit integer, which might cause problems on January 19, 2038 (known as the Year 2038 problem or Y2038).

Human readable time     Seconds
1 hour    3600 seconds
1 day    86400 seconds
1 week    604800 seconds
1 month (30.44 days)     2629743 seconds
                        2629744
1 year (365.24 days)      31556926 seconds
                         31556926


Years:
floor(Epoch Difference/31556926)

Months:
floor(Epoch Difference/2629743)

Days:
floor(Epoch Difference/86400)

Hours:
floor(Epoch Difference/3600)

Minutes:
floor(Epoch Difference/60)
