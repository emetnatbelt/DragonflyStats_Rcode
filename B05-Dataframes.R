
################################################
# Creating a more complex data frame

A <- data.frame(
      name=c("a","b","c"),
      ownership=c("Case 1","Case 1","Case 2"),
      listed.at=c("NSE",NA,"BSE"),
          # Firm "b" is unlisted.
      is.listed=c(TRUE,FALSE,TRUE),
          # R convention
          # boolean variables are named "is.something"
      x=c(2.2,3.3,4.4),
      date=as.Date(c("2004-04-04","2005-05-05","2006-06-06"))
)
#################################################

# Characteristics of a Data Frame

summary(A)
dim(A)
nrow(A) ; ncol(A)
names(A)

#################################################
