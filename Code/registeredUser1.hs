module RegisteredUser where

  newtype Username = Username String
  newtype AccoutNumber = AccountNumber Integer

  data User = UnregisteredUser
            | RegisteredUser Username AccountNumber
