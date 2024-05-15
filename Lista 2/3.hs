-- Usando compreensão de listas e a função grid definida na questão anterior,
-- defina uma função quadrado :: Int -> [(Int,Int)] 
-- que retorna um plano de coordenadas quadrado de tamanho n, 
-- excluindo a diagonal principal (0,0) a (n,n). Por exemplo:
-- > quadrado 2
-- [(0,1), (0,2), (1,0), (1,2), (2,0), (2,1)]

grid :: Int -> Int -> [(Int, Int)]
grid m n = [(x,y) | x <- [0..m], y <- [0..n]]

quadrado :: Int -> [(Int, Int)]
quadrado n = [(x,y) | (x, y) <- grid n n, x /= y]

main :: IO()
main = do 
    print $ quadrado 2