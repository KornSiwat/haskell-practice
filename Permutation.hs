-- Copyright (c) 2021 Siwat Ponpued
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

module Permutation
  ( permute,
  )
where

import Data.List (delete)

permute :: Eq a => [a] -> [[a]]
permute [] = [[]]
permute str = [x : xs | x <- str, xs <- permute $ delete x str]