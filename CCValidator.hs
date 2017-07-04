module CCValidator  
( toDigits
, toDigitsRev  
, doubleEveryOther 
, sumDigit
, sumDigits  
, validate  
) where  

import Data.Char

toDigits x = [digitToInt char | char <- show x]

toDigitsRev x = [digitToInt char | char <- reverse (show x)]

doubleEveryOther xs = [if i `mod` 2 == 0 then x * 2 else x | (x, i) <- zip xs [1..]]

sumDigit x = sum (toDigits x)

sumDigits xs = sum [sumDigit x | x <- xs]

validate x = x `mod` 10 == 8
