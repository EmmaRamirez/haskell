{-
  Very similar to where bindings are let bindings.
  Where bindings are a syntactic construct hat let you bind
  variables at the end of a function and the whole function
  can see them. Let bindings are very local and don't span.
-}

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r^2
    in sideArea + 2 * topArea

{-
  The form is 'let <bindings> in <expression>'
  Difference between let and where?
  - Let puts the bindings first and expression that uses them later
  - Let bindings are expressions themselves
-}
