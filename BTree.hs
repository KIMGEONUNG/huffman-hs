module BTree where

data BTree a = Nil | Node (BTree a) a (BTree a) deriving (Show, Eq, Ord)

getValue :: BTree a -> a 
getValue (Node _ v _) = v

t1 = Nil
t2 = Node Nil 1 Nil
t3 = Node (Node Nil 3 Nil) 1 Nil
t4 = Node (Node Nil 3 Nil) 1 Nil


symbols = ['a','b','c']
probs = [0.2,0.3,0.5]
