import Data.Char

toDigits num = [digitToInt x | x <- show num]
