import Control.Monad

-- given n, "queens n" solves the n-queens problem, returning a list of all the
-- safe arrangements. each solution is a list of the columns where the queens are
-- located for each row
queens :: Int -> [[Int]]
queens n = foldM oneMoreQueen [] [1..n]
-- foldM folds in the list monad, which is convenient for "nondeterminstically"
-- finding "all possible solutions" of something. the initial value [] corresponds
-- to the only safe arrangement of queens in 0 rows

  where -- given a safe arrangement y of queens in the first i rows,
        -- "add_queen y _" returns a list of all the safe arrangements of queens
        -- in the first (i+1) rows
        oneMoreQueen y _ = [ x : y | x <- [1..n], safe x y 1]

-- "safe x y n" tests whether a queen at column x would be safe from previous
-- queens in y where the first element of y is n rows away from x, the second
-- element is (n+1) rows away from x, etc.
safe x [] n = True
safe x (c:y) n = and [ x /= c , x /= c + n , x /= c - n , safe x y (n+1)]
-- we only need to check for queens in the same column, and the same diagonals;
-- queens in the same row are not possible by the fact that we only pick one
-- queen per row



-- prints what the board looks like for a solution; with an extra newline
printSolution y = do mapM_ (\x -> putStrLn [if z == x then 'Q' else '.' | z <- [1..n]]) y
                     putStrLn ""
  where n = length y

-- prints all the solutions for 6 queens
main = mapM_ printSolution $ queens 6
