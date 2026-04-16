import qualified Data.Map as Map
import Data.List (sortOn)
import Data.Ord (Down(..))
import System.Environment (getArgs, getProgName)

formatList :: [(String, Int)] -> String
formatList formList = unlines [ word ++ ": " ++ show value | (word, value) <- formList ]

main :: IO ()
main = do
 name <- getProgName
 args <- getArgs
 
 if null args
  then putStrLn ("Uso: " ++ name ++ " <arquivo>")
  else do
   let fileName = head args
   content <- readFile fileName
   let list = words content
   let myMap = Map.fromListWith (+) [(word, 1) | word <- list]
   let ordenaredList = sortOn (Down . snd) (Map.toList myMap)

   putStr (formatList ordenaredList)
