-- Construa uma função inserir_posicao_x :: [Int] -> Int -> Int -> [Int] em que, 
-- dada uma lista de inteiros, uma posição e um elemento a ser inserido, 
--retorne uma nova lista com aquele elemento na n-ésima posição.

--1 2 3 4 5 6

inserir_posicao_x :: [Int] -> Int -> Int -> [Int]
inserir_posicao_x (x:xs) p n 
                            | p == 0 = n : x : xs
                            | otherwise = x : inserir_posicao_x xs (p-1) n

main :: IO()
main = do
    print $ inserir_posicao_x [1,2,3,4,5,6] 3 10