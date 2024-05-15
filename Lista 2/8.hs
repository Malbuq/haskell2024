-- Redefina a função posicoes usando a função buscar,
-- disponível em https://emanoelbarreiros.github.io/funcional/haskell-5#a-fun%C3%A7%C3%A3o-zip

buscar :: Eq a => a -> [(a,b)] -> [b]
buscar k xs = [v | (k', v) <- xs, k == k']

posicoes :: Eq a => a -> [a] -> [Int]
posicoes x xs = buscar x (zip xs [0 ..])

main :: IO()
main = do
    print $ posicoes 4 [1..10]