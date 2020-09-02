module Huffman where

import Data.List

type Alphabet = Char
type Weight = Double
type Codeword = String

generateInputTuple :: String -> ([Alphabet],[Weight])
generateInputTuple target = (chars, counts)
                        where
                            len = fromIntegral $ length target
                            chars = nub target
                            counts = chars 
                                    >>= \word -> return $ (/len) $ fromIntegral $ length $ filter (==word) target 


huffmanEncoding :: [Alphabet] -> [Weight] -> [Codeword]
huffmanEncoding = error "Not Implemented"
