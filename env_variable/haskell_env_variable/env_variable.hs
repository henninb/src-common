--comment


import System.Environment
main = do getEnv "OS" >>= print  -- get env var
          getEnvironment >>= print -- get the entire environment as a list of (key, value) pairs
