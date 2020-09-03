module BTreeTest where

import BTree

import Test.Hspec 
import Test.QuickCheck


main :: IO ()
main = hspec $ 
    describe "BTREETEST.HS MODULE UNIT TEST" $ do 

        describe "getvalue function unit test" $ do
            it "test_001" $ do 
                getValue (Node (Node Nil 3 Nil) 1 Nil) `shouldBe` 1
            it "test_002" $ do
                getValue (Node Nil 2 Nil) `shouldBe` 2

