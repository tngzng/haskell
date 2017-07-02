import Data.Char

toDigits num = [digitToInt digit | digit <- show num]

toDigitsRev num = [digitToInt digit | digit <- reverse (show num)]

doubleEveryOther arr = [if i `mod` 2 == 0 then num * 2 else num | (num, i) <- zip arr [1..]]
