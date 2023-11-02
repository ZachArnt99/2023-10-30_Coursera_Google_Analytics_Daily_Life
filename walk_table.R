walk_table <- data.frame(dom = c(27, 27, 28, 29, 30), month = c(10, 10, 10, 10, 10), place = c("main_st", "lake", "lake", "lake", "lake"), hrs = c(4, 1.5, 1.5, 1.5, 2.3))

library(data.table)
write.csv(walk_table, file = "walk_table.csv")
library(ggplot2)

g <- ggplot(walk_table, aes(x = dom, y = hrs, fill = place))
g + geom_bar(position = "dodge", stat = "identity", width = .8) + labs(x = "Day of Month", y = "Length (hrs)", title = "Lengths of my Walks in October, 2023") + theme_bw(base_family = "sans", base_size = 20) + theme(panel.grid.major.x = element_blank())
