if (!require(effects)) install.packages("effects")

wvs <- effects::WVS
wvs2 <- wvs

wvs2[] <-
  lapply(wvs, function(x) {
  
  x[sample(nrow(wvs), 500)] <- NA
  x

})

wvs2 <- within(wvs2, {
  poverty <- as.character(poverty)
  religion <- as.character(religion)
  religion <- ifelse(religion == "yes", 1, 0)
  age <- as.character(age)
  ind <- 1:nrow(wvs2)
})

ind_poverty <- sample(with(wvs2, which(poverty == "Too Little")), 100)

wvs2[ind_poverty, "poverty"] <- sample(c("Too L", "Too Littl"), length(ind_poverty), replace = T)

colnames(wvs2) <- c("pov", "which_relig?", "degree", "country", "age")

wvs2merge <- wvs2[, c(1, 2, 7), drop = F]
wvs2merge_two <- wvs2[, 3:7, drop = F]

write.table(wvs2merge, file = "./data/wvs")
write.csv2(wvs2merge_two, file = "./data/wvs_semi_colon")

