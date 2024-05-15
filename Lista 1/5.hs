xor :: Bool -> Bool -> Bool
xor a b = (a || b) && (not (a && b))

main :: IO()
main = do  
    print $ xor True False