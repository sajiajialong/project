setwd("C:/Users/sheng/OneDrive/CU Second Semester/Statistical Graphics/Final Project")

NYTS_2018_Full <- readr::read_csv("./data/2018-NYTS/nyts2018.csv")
NYTS_2018_Selected <- NYTS_2018_Full %>% select(matches("Q(1|2|3|5)[A-Z]?$"),  contains('Q33'), 'Q27', 'Q35', 'Q68', 'Q69', 'Q28','Q29','Q30','Q31','Q34','Q36','Q37') %>%
  mutate(Q33A = ifelse(Q33A==1, "A", Q33A)) %>% mutate(Q33B = ifelse(Q33B==1, "B", Q33B)) %>%
  mutate(Q33C = ifelse(Q33C==1, "C", Q33C)) %>% mutate(Q33D = ifelse(Q33D==1, "D", Q33D)) %>%
  mutate(Q33E = ifelse(Q33E==1, "E", Q33E)) %>% mutate(Q33F = ifelse(Q33F==1, "F", Q33F)) %>%
  mutate(Q33G = ifelse(Q33G==1, "G", Q33G)) %>% mutate(Q33H = ifelse(Q33H==1, "H", Q33H)) %>%
  mutate(Q33I = ifelse(Q33I==1, "I", Q33I)) %>% mutate(Q33J = ifelse(Q33J==1, "J", Q33J)) %>%
  #mutate(Q33Fake = coalesce(Q33A,Q33B,Q33C,Q33D,Q33E,Q33F,Q33G,Q33H,Q33I,Q33J)) %>%
  mutate(Q33 = stringr::str_replace_all(paste(Q33A,Q33B,Q33C,Q33D,Q33E,Q33F,Q33G,Q33H,Q33I,Q33J, sep = ""),"NA","")) %>%
  mutate(Q5A = ifelse(Q5A==1, "A", Q5A)) %>% mutate(Q5B = ifelse(Q5B==1, "B", Q5B)) %>%
  mutate(Q5C = ifelse(Q5C==1, "C", Q5C)) %>% mutate(Q5D = ifelse(Q5D==1, "D", Q5D)) %>%
  mutate(Q5E = ifelse(Q5E==1, "E", Q5E)) %>% 
  select(matches("Q(1|2|3)$"), 'Q27','Q28','Q29','Q30','Q31','Q34','Q35','Q36','Q37','Q68','Q69', contains('Q33')) %>%
  filter(Q2!='*') %>% filter(Q3!='*') %>% filter(Q34!='*') %>% filter(Q27!='*') %>% 
  filter(Q35!='*') %>% filter(Q68!='*') %>% filter(Q69!='*') %>% filter(Q37!='*') %>% 
  filter(Q29!='**') %>% filter(Q1!='**')
