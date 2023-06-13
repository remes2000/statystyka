wspolczynnik_zmiennosci <- function(x, na.rm = FALSE) {
  if (!is.numeric(x)) {
    stop("Argument nie jest liczbą")
  }
  
  if (na.rm) {
    x <- x[!is.na(x)]
  }
  
  mean_x <- mean(x)
  sd_x <- sd(x)
  
  cv <- (sd_x / mean_x) * 100
  return(cv)
}