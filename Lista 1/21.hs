-- Implemente uma função que descomprima o texto resultante da função anterior.

--asd!4fghjjk!4lpoooi
import Data.Char (ord)

decodify :: [Char] -> [Char]
decodify [] = []
decodify (c:cs)
    |c == '!' = (printSequence n v) ++ decodify (drop 2 cs)
    |otherwise = c : decodify cs
        where
            n = charToInt $ head cs
            v = head $ tail cs

charToInt :: Char -> Int
charToInt c = fromEnum c - fromEnum '0'

printSequence :: Int -> Char -> [Char]
printSequence 0 c = []
printSequence n c = c : printSequence (n-1) c

main :: IO()
main = do
    print $ decodify "asd!4fghjjk!4lpoooi"
    print $ "asdffffghjjkllllpoooi" == decodify "asd!4fghjjk!4lpoooi"