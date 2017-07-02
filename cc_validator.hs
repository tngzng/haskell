import Data.Char

toDigits num = [digitToInt x | x <- show num]

toDigitsRev num = [digitToInt x | x <- reverse (show num)]

doubleEveryOther arr = [if y `mod` 2 == 0 then x * 2 else x| (x, y) <- zip arr [1..]]
