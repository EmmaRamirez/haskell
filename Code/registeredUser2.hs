module RegisteredUser where

  newtype Username = Username String
  newtype AccoutNumber = AccoutNumber Integer

  data User = UnregisteredUser
            | RegisteredUser Username AccountNumber

  printUser :: User -> IO()
  printUser UnregisteredUser = putStrLn "UnregisteredUser"
  printUser (RegisteredUser (Username name)
                            (AccountNumber acctNum))
            = putStrLn $ name ++ " " ++ show acctNum
