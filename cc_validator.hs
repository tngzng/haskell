import Data.Char

toDigits num = [digitToInt x | x <- show num]

toDigitsRev num = [digitToInt x | x <- reverse (show num)]

