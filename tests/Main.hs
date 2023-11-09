import Test.HUnit
import Test.QuickCheck
import Control.Monad (void)

import qualified RandomTests
import qualified UnitTests

main :: IO ()
main = do
    putStrLn "Running RandomTests..."
    void $ runTestTT RandomTests.tests 
    putStrLn "Running UnitTests..."
    void $ runTestTT UnitTests.tests
    putStrLn "Running ShowPlayerTests..."
    void $ runTestTT ShowPlayerTests.tests
    putStrLn "All tests completed." 