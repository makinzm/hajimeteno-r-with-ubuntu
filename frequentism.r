# 再現性のために乱数シードを設定
set.seed(128)

# 2群のデータを生成：群Aは平均50、群Bは平均52、標準偏差は両群とも10
groupA <- rnorm(50, mean = 50, sd = 10)
groupB <- rnorm(50, mean = 52, sd = 10)

# 頻度主義的t検定
freq_result <- t.test(groupA, groupB, var.equal = TRUE)
freq_result
