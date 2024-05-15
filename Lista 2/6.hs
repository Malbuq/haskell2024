-- Um inteiro positivo é perfeito se ele é igual à soma de todos os seus fatores,
-- excluindo o próprio número. Usando compreensão de listas e a função fatores,
-- defina a função perfeitos :: Int -> [Int] que retorna a lista de todos os números perfeitos
-- menores que um limite informado como argumento. Exemplo:
-- > perfeitos 500
-- [6, 28, 496]



factors :: Int -> [Int]
factors n = [x | x <- [1..(div n 2)], n `mod` x == 0]


perfeitos :: Int -> [Int]
perfeitos n = [x | x <- [1..n], sum (factors x) == x]

main :: IO()
main = do 
    print $ perfeitos 500