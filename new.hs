doubleMe x = x+x
doubletwo x y = doubleMe x + doubleMe y + 9
doubleBig x = if x > 100 then x*2 else x
doubleBig' x = (if x > 100 then x*2 else x) + 2


b = take 10 [5,8..305]

evens :: [Integer] -> [[Char]] 
evens s = [if x < 10 then "Small even" else "Big even" | x <- s,  not (odd x)]


onlyUpper :: [Char] -> [Char]
onlyUpper st = [x|x <- st,x `elem` ['A'..'Z']]

doYouGAF :: [[Char]] -> [[Char]] 
doYouGAF st = [if (x == "No" || x== "no") then "No Fs given" else "But why" | x <-  st, x == head st]

 
HoursYouReadBooks :: (Integral a) => a -> a -> String

HoursYouReadBooks hours books
  | ratio <= 1 = "C'mmon give those books some time"
  | ratio <= 2 = "That's quite good!"
  | ratio <= 3 = "Oh you are a devotee"
  | otherwise = "Get OUT! Like Seriously!"
  where ratio = (fromIntegral (hours) / books)