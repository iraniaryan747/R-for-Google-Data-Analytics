#filtering
data("ToothGrowth")
View(ToothGrowth)

filtered_tg <- filter(ToothGrowth, dose==0.5)
View(filtered_tg)
0
#filtering and arranging with nested functions
arranged_f_tf <- arrange(filter(ToothGrowth, dose==0.5),len)
View(arranged_f_tf) 

#using pipes to filter and arrange
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  arrange(len)
View(filtered_toothgrowth)

#using pipes to group by and summarize
filtered_tgr <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len,na.rm = T),.groups = "drop")
View(filtered_tgr)