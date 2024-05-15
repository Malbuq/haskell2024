findMaxQuadRoot :: (Ord a, Floating a) => a -> a -> a -> a
findMaxQuadRoot a b c = max x0 x1
                    where 
                        descriminant = b*b - 4*a*c
                        x0 = (-b + sqrt descriminant) / (2*a)
                        x1 = (-b - sqrt descriminant) / (2*a)

findMinQuadRoot :: (Ord a, Floating a) => a -> a -> a -> a
findMinQuadRoot a b c = min x0 x1
                    where 
                        descriminant = b*b - 4*a*c
                        x0 = (-b + sqrt descriminant) / (2*a)
                        x1 = (-b - sqrt descriminant) / (2*a)


main :: IO()
main = do
    print $ findMaxQuadRoot 1 4 4