list.files()
soccer <- read.csv("soccer.csv")
soccer

names(soccer) <- c("Rank", "Team", "Game", "W", "D", "L")
soccer

soccer$score <- soccer$W * 3 + soccer$D * 1
soccer

hist(soccer$score)
summary(soccer$score)

soccer$grade <- ifelse(soccer$score >= 64.5, "S_team", ifelse(soccer$score >= 43.5, "m_team", "w_team"))
soccer

library(ggplot2)
qplot(soccer$grade)
