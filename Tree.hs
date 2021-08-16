module Tree (Tree) where

data Tree a = EmptyTree | a Left (Tree a) Right (Tree a)