-- Escreva a função capaz de calcular o produto escalar de duas 
-- listas de inteiros xs e ys de tamanho n, que é 
-- dado pelo produto dos inteiros em posições correspondentes:

prodEscalar :: [Int] -> [Int] -> Int
prodEscalar xs ys = sum [x*y | (x,y) <- zip xs ys]

main :: IO()
main = do
    print $ prodEscalar [1,2,3] [4,5,6]