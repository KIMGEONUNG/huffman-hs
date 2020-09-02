module HuffmanTest where

import Huffman  

import Test.Hspec
import Test.QuickCheck

main :: IO ()
main = hspec $ do
    describe "UTILSTEST.HS MODULE UNIT TEST" $ do
        describe "removeElement function unit test" $ do
            it "test_001" $ do
                generateInputTuple "abcd" `shouldBe` (['a','b','c','d'],[0.25,0.25,0.25,0.25]) 
            it "test_001" $ do
                generateInputTuple "aacd" `shouldBe` (['a','c','d'],[0.5,0.25,0.25]) 
