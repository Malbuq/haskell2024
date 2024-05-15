--Defina uma função que retorne o valor da n-ésima posição de uma lista.

atIndex :: (Eq a, Ord a) => [a] -> Int -> a
atIndex l i
            |i == 0 = x
            |otherwise = atIndex xs (i-1)
                where
                    x = head l
                    xs = tail l
                    listSize = length l - 1

main :: IO()
main = do
    print $ atIndex [1,2,3,4,5,6] 2