## HuffmanHS

 This is huffman encoding program implemented by haskell

## Dependency

- ghc compiler
- Data.PSQueue [link](https://hackage.haskell.org/package/PSQueue-1.1.0.1/docs/Data-PSQueue.html)
    - Priority Queue opensource

## Features

- Print alphabets and probabilities 
- Print Huffman Tree
- Print Codewords 

## Usage

- **Compile & Execute** 

```bash

> make
> ./build/huffman

```

- **Clean result** 

```bash

> make clean

```

- **Example**

```bash

> ./build/huffman 
hello hello hi hi
# text              : "hello hello hi hi"
# Alphabets         : "helo i"
# Probobilities     : [0.23529411764705882,0.11764705882352941,0.23529411764705882,0.11764705882352941,0.17647058823529413,0.11764705882352941]
# Huffman Tree      : Node (Node (Node Nil (Just 'h') Nil) Nothing (Node Nil (Just 'l') Nil)) Nothing (Node (Node (Node Nil (Just 'e') Nil) Nothing (Node Nil (Just 'i') Nil)) Nothing (Node (Node Nil (Just 'o') Nil) Nothing (Node Nil (Just ' ') Nil)))
# Huffman Codewords : [('h',"00"),('e',"100"),('l',"01"),('o',"110"),(' ',"111"),('i',"101")]
### Program End ###

```
