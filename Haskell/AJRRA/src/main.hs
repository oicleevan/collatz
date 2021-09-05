{-# LANGUAGE FlexibleInstances, UndecidableInstances
             , ScopedTypeVariables #-}
import System.IO

import System.Environment
import System.Exit


main = do
        args<- getArgs
        if (length args) == 1
            then do
                let x = read (args!!0) :: Int
                print (collatz x)
            else do
                putStrLn "enter value for x: "
                input1 <- getLine
                let x = (read input1 :: Int)
                print (collatz x)
        



collatz :: Int -> [Int]
collatz 1 = [1]
collatz n
    | even n =  n : collatz (n `div` 2)
    | odd n  =  n : collatz (n * 3 + 1)