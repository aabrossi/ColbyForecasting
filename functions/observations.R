
read_observations = function(scientificname = "Orcinus orca",
                             minimum_year = 1970){
  # read in the raw data
  x = read_obis(scientificname, ...) |>
    dplyr::mutate(month = factor(month, levels = month.abb))}
  
  
  # if the user provided a non-NULL filter by year
  if (!is.null(minimum_year)){
    x = x |>
      filter(year >= minimum_year)
  }
  #' Read raw OBIS data and then filter it
  #' 
  #' @param scientificname chr, the name of the species to read
  #' @param minimum_year num, the earliest year of observation to accept or 
  #'   set to NULL to skip
  #' @param ... other arguments passed to `read_obis()`
  #' @return a filtered table of observations
  
  # Happy coding!
  
 
  read_observations = function(scientificname = "Orcinus orca",
                                                              indiviudalCount=10,...) {
                                
         x = read_obis(scientificname, ...) |>
           dplyr::mutate(month = factor(month, levels = month.abb))
        if (!is.null(individualCount))
          x = x |>
                filter(count >= individualCount)
          return(x)
  }
  