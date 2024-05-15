-- Implemente uma função que receba duas listas de inteiros sem repetição, 
-- e retorne uma terceira lista que contenha somente números que estejam nas duas listas dadas.

-- 1 2 3 4 5   3 4 5 6 7 

listIntersec :: [Int] -> [Int] -> [Int]
listIntersec [] _ = []
listIntersec (x:xs) ys
                        |elem x ys = x : listIntersec xs ys
                        |otherwise = listIntersec xs ys


main :: IO ()
main = do
    let finalList = listIntersec [1,2,3,4,5] [4,5,6,7,8]
    print finalList
