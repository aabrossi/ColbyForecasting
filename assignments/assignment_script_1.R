# Assiugment 1 Script 
# Use the [Brickman tutorial](https://github.com/BigelowLab/ColbyForecasting/wiki/Brickman) 
# to extract data from the location of Buoy N01 for RCP4.5 2055
# Make a plot of `SST` (y-axis) as a function of `month` (x-axis). 

#Run setup file (setup.R) before beginning 

#Load bouy data 
```{r Load Data}
buoys = gom_buoys()
buoys
coast = read_coastline()
db = brickman_database() 
```

#Filter data to use only N01
```{r Filter data N01} 
buoys = buoys |> 
  filter(id == "N01")
```

# filter the database to just the current scenario monthlies
```{r Filter current}
db = db |> 
  filter(scenario == "PRESENT", interval == "mon")
```

# read the covariates and extract data
```{r covariates} 
covars = read_brickman(db)
x = extract_brickman(covars, buoys, form = "wide")
```

#add column 
```{r SST column}
x = x |> 
  mutate(SST = SST)
```

#plot the function 
```{r plot}
x = x |>
  mutate(month = factor(month, levels = month.abb))
ggplot(data = x,
       mapping = aes(x = month, y = SST)) +
  geom_point() + 
  labs(y = "SST (C)", 
       title = "Monthly Sea Surface Tempurature")
```
#Save graph as image 
```{r save graph}
ggsave("images/N01_dT.png")
```

