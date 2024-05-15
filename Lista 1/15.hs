-- Construa uma função del_posicao_n :: [Int] -> Int -> [Int] 
-- em que dada uma lista de inteiros e a posição de um elemento qualquer, 
-- retorne uma nova lista sem aquele elemento da n-ésima posição.

-- take n l -> [1,2,3] 2 => [1,2]
-- drop [1,2,3,4,5,6,7] 3

del_posicao_n :: [Int] -> Int -> [Int]
del_posicao_n [] _ = []
del_posicao_n l n
    | n < 0 || n >= length l = l 
    | otherwise = myTake n l ++ drop (n + 1) l

myTake :: Int -> [Int] -> [Int]
myTake n l
                | n < 0 || n >= length l = []
                | n == 0 = []
                | otherwise = head l : myTake (n-1) (tail l)

main :: IO()
main = do
    -- print $ del_posicao_n [1,2,3,4,5] 2
    print $ drop 3 [1,2,3,4,5,6]
    print $ myDrop 3 [1,2,3,4,5,6]