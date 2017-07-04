import CCValidator
import Test.HUnit 

toDigitsTest = TestCase (assertEqual "toDigits test" (toDigits 1234) [1,2,3,4]) 
toDigitsRevTest = TestCase (assertEqual "toDigitsRev test" (toDigitsRev 1234) [4,3,2,1])
doubleEveryOtherTest = TestCase (assertEqual "doubleEveryOther test" (doubleEveryOther [1,2,3,4]) [1,4,3,8])
sumDigitTest = TestCase (assertEqual "sumDigit test" (sumDigit 16) 7)
sumDigitsTest = TestCase (assertEqual "sumDigits test" (sumDigits [1,16]) 8)
validateTrueTest = TestCase (assertEqual "validate true test" (validate 18) True)
validateFalseTest = TestCase (assertEqual "validate false tests" (validate 17) False)
 
tests = TestList [TestLabel "toDigits test" toDigitsTest,
                  TestLabel "toDigitsRev test" toDigitsRevTest,
                  TestLabel "doubleEveryOther test" doubleEveryOtherTest,
                  TestLabel "sumDigit test" sumDigitTest,
                  TestLabel "sumDigits tests" sumDigitsTest,
                  TestLabel "validate true test" validateTrueTest,
                  TestLabel "validate false test" validateFalseTest]
