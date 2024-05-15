factorial :: (Num a, Eq a)=> a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

combination :: (Eq a, Integral a) => a -> a -> a
combination m n = div (factorial m) (factorial (m - n) * factorial n)


main :: IO()
main = do
    print $ combination 5 1