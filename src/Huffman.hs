module Huffman where

import Data.List
import Data.PSQueue
import Data.Maybe
import BTree

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
                                    
generatePQ :: [Alphabet] -> [Weight] -> PSQ (BTree (Maybe Alphabet)) Weight
generatePQ as ws = fromList 
                    $ zipWith (:->) 
                        (map (\v -> Node Nil (Just v) Nil) as) ws

genHuffmanTree :: [Alphabet] -> [Weight] -> BTree (Maybe Alphabet)
genHuffmanTree as ws = head $ keys $ genHuffmanTree' treePQ
                        where
                            treePQ = generatePQ as ws
                            genHuffmanTree' q = if size q > 1 
                                                     then genHuffmanTree' $ action1 q 
                                                     else q


action1 :: PSQ (BTree (Maybe Alphabet)) Weight -> PSQ (BTree (Maybe Alphabet)) Weight
action1 q = let
            t1 = findMin q 
            p1 = strip $ fmap prio t1 
            deletedPQ1 = deleteMin q
            t2 = findMin deletedPQ1 
            p2 = strip $ fmap prio t2 
            deletedPQ2 = deleteMin deletedPQ1 
            newOne = Node (key $ strip t1) Nothing (key $ strip t2)
            in Data.PSQueue.insert newOne (p1 + p2) deletedPQ2

strip :: Maybe a -> a
strip (Just x) = x

hoffmanCodeword :: BTree (Maybe Alphabet) -> Alphabet -> String -> String
hoffmanCodeword Nil _ _ = "" 
hoffmanCodeword (Node left val right) target acc 
                                     | isNothing val = hoffmanCodeword left target (acc ++ "0") ++ hoffmanCodeword right target (acc ++ "1")
                                     | val == Just target = acc
                                     | otherwise = [] 

huffmanEncoding :: [Alphabet] -> [Weight] -> [(Alphabet,Codeword)]
huffmanEncoding as ws = zip as codes 
                where 
                    t = genHuffmanTree as ws 
                    codes = map (\a -> hoffmanCodeword t a []) as 

