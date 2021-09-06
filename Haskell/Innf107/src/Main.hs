{-# LANGUAGE LambdaCase, BlockArguments, ViewPatterns #-}
module Main where

import Text.Read (readMaybe)

import Data.List (unfoldr)

import System.IO (hFlush, stdout)
import System.Environment (getArgs)

main :: IO ()
main = getArgs >>= \case  
    []                      -> interactive
    [(readMaybe -> Just x)] -> mapM_ print $ collatz x
    _                       -> putStrLn "Invalid arguments... running in interactive mode" >> interactive
    where
        interactive = do 
            putStr "> "
            hFlush stdout
            readMaybe <$> getLine >>= \case
                Nothing -> putStrLn "Invalid input" >> interactive
                Just x -> mapM_ print $ collatz x

collatz :: Integer -> [Integer]
collatz i = unfoldr build i <> [1]
    where
        build 1 = Nothing
        build n
            | even n = Just (n, n `div` 2)
            | odd n  = Just (n, n * 3 + 1) 
    
