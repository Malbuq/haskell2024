potencia_2 :: Num a => a -> a
potencia_2 x = x*x

main :: IO()
main = do  
    print $ potencia_2 3.2