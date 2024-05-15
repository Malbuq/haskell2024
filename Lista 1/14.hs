import qualified Data.Map as Map
import Data.Maybe (fromMaybe)

myDict :: Map.Map Int String
myDict = Map.fromList
     [(0, "zero"),
     (1, "um"), 
     (2, "dois"), 
     (3, "tres"), 
     (4, "quatro"), 
     (5, "cinco"), 
     (6, "seis"), 
     (7, "sete"), 
     (8, "oito"), 
     (9, "nove")]

convertToString :: [Int] -> [String]
convertToString [] = []
convertToString (x:xs) = fromMaybe "" (Map.lookup x myDict) : convertToString xs

main :: IO ()
main = do
    print $ convertToString [1,2,3,4,5,10]
