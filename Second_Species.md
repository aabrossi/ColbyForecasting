My SecondSpecies
================

``` r
source("/home/abross28/ColbyForecasting/setup.R")
x=read_observations()
```

    ## # A tibble: 82 × 4
    ##    scenario year    interval var  
    ##    <chr>    <chr>   <chr>    <chr>
    ##  1 PRESENT  PRESENT ann      MLD  
    ##  2 PRESENT  PRESENT ann      Sbtm 
    ##  3 PRESENT  PRESENT ann      SSS  
    ##  4 PRESENT  PRESENT ann      SST  
    ##  5 PRESENT  PRESENT ann      Tbtm 
    ##  6 PRESENT  PRESENT ann      U    
    ##  7 PRESENT  PRESENT ann      V    
    ##  8 PRESENT  PRESENT ann      Xbtm 
    ##  9 PRESENT  PRESENT mon      MLD  
    ## 10 PRESENT  PRESENT mon      Sbtm 
    ## # ℹ 72 more rows

``` r
x
```

    ## Simple feature collection with 125158 features and 7 fields
    ## Geometry type: POINT
    ## Dimension:     XY
    ## Bounding box:  xmin: -74.9 ymin: 38.8 xmax: -65 ymax: 45.4147
    ## Geodetic CRS:  WGS 84
    ## # A tibble: 125,158 × 8
    ##    id             basisOfRecord eventDate   year month eventTime individualCount
    ##  * <chr>          <chr>         <date>     <dbl> <fct> <chr>               <dbl>
    ##  1 0000074b-6934… HumanObserva… 2020-03-15  2020 Mar   <NA>                   NA
    ##  2 0000768f-f8a7… HumanObserva… 2014-07-20  2014 Jul   <NA>                   NA
    ##  3 0001af0f-cd43… HumanObserva… 1988-03-12  1988 Mar   <NA>                   NA
    ##  4 0001cddf-14f0… HumanObserva… 2018-04-23  2018 Apr   14:08:07                1
    ##  5 0002e258-4de9… HumanObserva… 2018-04-23  2018 Apr   15:40:31                1
    ##  6 0002f4ab-e13f… HumanObserva… 2018-04-23  2018 Apr   15:40:42                1
    ##  7 0003253c-a165… Occurrence    1994-07-09  1994 Jul   21:30:00               NA
    ##  8 0003bd50-a128… HumanObserva… 2018-04-23  2018 Apr   14:07:14                1
    ##  9 0003daf2-ea51… Occurrence    2004-07-14  2004 Jul   00:55:00               NA
    ## 10 00041135-e08e… HumanObserva… 2018-04-23  2018 Apr   15:40:38                1
    ## # ℹ 125,148 more rows
    ## # ℹ 1 more variable: geom <POINT [°]>
