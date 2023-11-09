import Test.HUnit

-- Test for showPlayer function
testShowPlayer :: Test
testShowPlayer = TestList [TestLabel "Test showPlayer O" testShowPlayerO, TestLabel "Test showPlayer B" testShowPlayerB, TestLabel "Test showPlayer X" testShowPlayerX]

testShowPlayerO :: Test
testShowPlayerO = TestCase (assertEqual "showPlayer O should be [\"   \", \" O \", \"   \"]" (showPlayer O) ["   ", " O ", "   "])

testShowPlayerB :: Test
testShowPlayerB = TestCase (assertEqual "showPlayer B should be [\"   \", \"   \", \"   \"]" (showPlayer B) ["   ", "   ", "   "])

testShowPlayerX :: Test
testShowPlayerX = TestCase (assertEqual "showPlayer X should be [\"   \", \" X \", \"   \"]" (showPlayer X) ["   ", " X ", "   "])

-- Test for next function
testNext :: Test
testNext = TestList [TestLabel "Test next O" testNextO, TestLabel "Test next B" testNextB, TestLabel "Test next X" testNextX]

testNextO :: Test
testNextO = TestCase (assertEqual "next O should be X" (next O) X)

testNextB :: Test
testNextB = TestCase (assertEqual "next B should be B" (next B) B)

testNextX :: Test
testNextX = TestCase (assertEqual "next X should be O" (next X) O)

-- Test for chop function
testChop :: Test
testChop = TestCase (do
  assertEqual "chop 2 [1,2,3,4,5] should be [[1,2],[3,4],[5]]" (chop 2 [1,2,3,4,5]) [[1,2],[3,4],[5]]
  assertEqual "chop 3 [1,2,3,4,5] should be [[1,2,3],[4,5]]" (chop 3 [1,2,3,4,5]) [[1,2,3],[4,5]]
  assertEqual "chop 1 [1,2,3,4,5] should be [[1],[2],[3],[4],[5]]" (chop 1 [1,2,3,4,5]) [[1],[2],[3],[4],[5]]
  )

-- Combine all tests
tests :: Test
tests = TestList [testShowPlayer, testNext, testChop]

main :: IO ()
main = runTestTT tests

