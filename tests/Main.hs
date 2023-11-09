import Test.HUnit
import Test.QuickCheck
import Control.Monad (void)

import qualified RandomTests
import qualified UnitTests

main :: IO ()
main = do
    --Runs Unit tests
    void $ runTestTT UnitTests.tests

    --Runs Quickcheck tests
    quickCheck RandomTests.prop_next 