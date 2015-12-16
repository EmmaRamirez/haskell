doubleMe x = x + x
-- new doubleUs
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100
                        then x
                        else x*2
-- ' is perfectly valid in function names
-- and often denotes a stricter version or slightly modified version
doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1

-- functions can't begin with UPPERcase
