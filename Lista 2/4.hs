-- De maneira similar à função length, mostre como a função 
-- replicate :: Int -> a -> [a] que produz uma lista de elementos
-- idênticos pode ser definida usando compreensão de listas. Exemplo:
-- > replicate 3 True
-- [True, True, True]


replicate2 :: Int -> a -> [a]
replicate2 n v = [v | x <- [1..n]]

main :: IO()
main = do
    print $ replicate2 3 True