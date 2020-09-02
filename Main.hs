import Huffman

main :: IO ()
main = getLine
    >>= \line -> putStr   "# text          : "  >> print line    
              >> putStr   "# Alphabets     : "  >> print (fst $ generateInputTuple line)
              >> putStr   "# Probobilities : "  >> print (snd $ generateInputTuple line)
              >> putStrLn "# Program End"

