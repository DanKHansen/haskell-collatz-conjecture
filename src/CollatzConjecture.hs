{-# LANGUAGE BangPatterns #-}

module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n =
  if n > 0 then Just (loop n 0) else Nothing
  where
    loop 1 !acc = acc
    loop x !acc = loop (if even x then div x 2 else 3 * x + 1) (acc + 1)
