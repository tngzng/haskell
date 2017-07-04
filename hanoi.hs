module Hanoi
( hanoi
) where

type Peg = String
type Move = (Peg, Peg)
hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]

hanoi 1 beg aux end = [(beg, end)]

hanoi n beg aux end = (hanoi (n - 1) beg end aux) ++ (hanoi 1 beg aux end) ++ (hanoi (n - 1) aux beg end)
