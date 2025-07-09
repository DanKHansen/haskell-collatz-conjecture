{-# LANGUAGE BangPatterns #-}

module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n
  | n > 0 = Just (loop 0 n)
  | otherwise = Nothing
  where
    loop !acc 1 = acc
    loop !acc i = loop (acc + 1) (if even i then div i 2 else 3 * i + 1)
