import Test.QuickCheck

--Instance for function with parameter 'Player'
instance Arbitrary Player where
  --keyword elements allows random choice between values  
  arbitrary = elements [O, B, X]

--Checks if next value of Player is not same(unless player = B) 
prop_next :: Player -> Bool
prop_next O = next O == X
prop_next B = next B == B
prop_next X = next X == O

main :: IO ()
main = quickCheck prop_next