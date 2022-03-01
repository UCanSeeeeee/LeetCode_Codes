
    func countBattleships(_ board: [[Character]]) -> Int {
        var ans = 0
        for i in 0 ..< board.count {
            for j in 0 ..< board[0].count {
                if board[i][j] == "X", i <= 0 || board[i - 1][j] == ".", j <= 0 || board[i][j - 1] == "." {
                    ans += 1
                }
            }
        }
        return ans
    }

countBattleships([["X",".",".","X"],[".",".",".","X"],["X","X",".","X"]])
