import Hanoi
import Test.HUnit 

baseCaseTest = TestCase (assertEqual "base case test" (hanoi 1 "a" "b" "c") [("a","c")]) 
recursiveTest = TestCase (assertEqual "recursive test" (hanoi 2 "a" "b" "c") [("a","b"),("a","c"),("b","c")])
 
tests = TestList [TestLabel "base case test" baseCaseTest,
                  TestLabel "recursive test" recursiveTest]
