computeSequence :: (Floating a, Eq a, Num a) => a -> a
computeSequence 1 = sqrt 6
computeSequence n = sqrt (6 + (computeSequence (n-1)))

main :: IO()
main = do
    print $ computeSequence 3