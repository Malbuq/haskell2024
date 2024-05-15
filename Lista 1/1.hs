import Data.List

isEngual :: Eq a => a -> a -> a -> Int
isEngual a b c
                | sizeNonDuplicate == 3 = 0
                | sizeNonDuplicate <= 3 = length l - sizeNonDuplicate + 1
                    where
                        sizeNonDuplicate = length $ nub [a,b,c]
                        l = [a,b,c]

main :: IO ()
main = do
    print $ isEngual 1 2 1