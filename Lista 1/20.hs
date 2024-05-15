-- Crie uma função que faça uma codificação sobre uma sequência de caracteres iguais, 
-- substitua a sequência por !na, onde n é o número de vezes que o caractere a é repetido. 
-- Observe que só devem ser comprimidas sequências de tamanhos maiores que 3. Exemplo:

-- comprime "asdffffghjjkllllpoooi"
-- "asd!4fghjjk!4lpoooi"
import Data.List (nub)


codify :: [Char] -> [Char]
codify [] = []
codify cs
    | currWindowIsValidSequence = '!' : show (windowSize + (computeSequence currChar stringNextWindow)) ++ [currChar] ++ codify stringNextWindow
    | length cs > windowSize = currChar : codify stringTail
    | otherwise = cs
        where
            currChar = head cs
            stringTail = tail cs
            stringNextWindow = drop windowSize cs
            currWindowIsValidSequence = (length $ nub $ take windowSize cs) == 1
            windowSize = 4

computeSequence :: Char -> [Char] -> Int
computeSequence _ [] = 0
computeSequence v (c:cs)
                        |c == v = 1 + computeSequence v cs
                        |c /= v = 0
       

main :: IO()
main = do
    print $ codify "asdffffghjjkllllpoooi"

