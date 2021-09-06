{-# LANGUAGE DataKinds, PolyKinds, TypeFamilies, GADTs, TypeOperators, StandaloneKindSignatures, UndecidableInstances #-}
{-# LANGUAGE NoStarIsType #-}
module Typelevel where

-- | Peano-style natural numbers
data Nat = Z | S Nat

type One    = S Z
type Two    = S One
type Three  = S Two
type Four   = S Three

type (+) :: Nat -> Nat -> Nat
type family n + m where
    n + Z     = n
    n + (S m) = S (n + m)
infixl 6 +

type (*) :: Nat -> Nat -> Nat
type family n * m where
    n * Z     = Z
    n * S m   = n + (n * m)
infixl 7 *

type Half :: Nat -> Nat
type family Half n where
    Half Z          = Z
    Half One        = Z
    Half (S (S n))  = S (Half n)

type Odd  :: Nat -> Bool
type family Odd n where
    Odd Z       = False
    Odd (S n)   = Even n

type Even :: Nat -> Bool
type family Even n where
    Even Z      = True
    Even (S n)  = Odd n

type If :: Bool -> k -> k -> k
type family If b th el where
    If True th el   = th
    If False th el  = el

type Collatz :: Nat -> [Nat]
type family Collatz n where
    Collatz Z   = '[]
    Collatz One = '[One]
    Collatz n   = n : CollatzStep (Even n) n

type family CollatzStep b n where
    CollatzStep True n  = Collatz (Half n)
    CollatzStep False n = Collatz (Three * n + One) 
