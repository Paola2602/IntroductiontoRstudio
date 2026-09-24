


data(DNase)
View(DNase)

head(DNase, 3)
?DNase


mean_density <- aggregate(density~conc,
                          data = DNase,
                          FUN = mean)

mean_density


barplot(
  height = mean_density$density,
  names.arg = mean_density$conc,
  col = "green",
  main = 'This plot was create with 2026 class',
  xlab = "Concentration (mg/L)",
  ylab = "Mean optical density (units?)",
  cex.names = 0.8
)
