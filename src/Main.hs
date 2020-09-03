import Huffman

main :: IO ()
main = getLine
    >>= \line -> putStr   "# text             : "  >> print line    
              >> putStr   "# Alphabets        : "  >> print (fst $ generateInputTuple line)
              >> putStr   "# Probobilities    : "  >> print (snd $ generateInputTuple line)
              >> putStr   "# Huffman Tree     : "  >> print (uncurry genHuffmanTree $ generateInputTuple line)
              >> putStr   "# Huffman Encoding : "  >> print (uncurry huffmanEncoding $ generateInputTuple line)
              >> putStrLn "### Program End ###"

