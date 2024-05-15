-- Usando compreensão de listas, forneça uma expressão que calcula a soma 1² +2²+...+100² dos quadrados dos primeiros 100 números inteiros.

squareUpToN :: Int -> Int
squareUpToN n = sum [x*x | x <- [1..n]]

main :: IO()
main = do
    print $ squareUpToN 100