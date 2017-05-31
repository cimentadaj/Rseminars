# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

# url <- "http://deron.meranda.us/data/census-derived-all-first.txt"
# firstnames <- read.table(url(url), header=FALSE)

names <- c("luke", "caron", "diane", "alisha", "marco", "leah", "carri", 
           "katheryn", "synthia", "muriel", "jonna", "edward", "sol", "sarina", 
           "dolly", "jed", "denisse", "merri", "magda", "nelida", "shela", 
           "jamila", "marya", "pilar", "helena", "rey", "elly", "shae", 
           "verdell", "warren", "domonique", "lavina", "hershel", "terrie", 
           "annamarie", "otha", "cyrstal", "ned", "alecia", "lesia", "coy", 
           "emmitt", "dori", "corrin", "elijah", "leopoldo", "lien", "michaele", 
           "sudie", "iola", "adrien", "brigida", "allyn", "palma", "jonathan", 
           "carma", "lanell", "tosha", "luanna", "ayesha", "cindy", "donnette", 
           "gaynell", "rasheeda", "codi", "tiffaney", "theressa", "herschel", 
           "alvera", "steve", "sharie", "angele", "regenia", "paola", "grace", 
           "scot", "risa", "haydee", "madge", "larue", "jeane", "joella", 
           "jayme", "isobel", "mandie", "myriam", "gerda", "melinda", "xavier", 
           "concetta", "eugenie", "zoraida", "ervin", "beaulah", "deangelo", 
           "elroy", "ellyn", "venessa", "leroy", "yadira")

rnorm_limits <- function(lower, upper, n, mean, sd) {
  samp <- rnorm(n, mean, sd)
  
  if (!(any(samp > upper) || any(samp < lower))) {
    return(samp)
  } else {
    rnorm_limits(lower, upper, n, mean, sd)
  }
}

math_tests <- data.frame(id = seq_along(names),
                         name = names,
                         math_score = rnorm_limits(55, 100, 100, 70, 9))

science_tests <- data.frame(id = seq_along(names),
                            name = names,
                            science_score = rnorm_limits(55, 100, 100, 70, 9))

literacy_scores <- setNames(rnorm_limits(55, 100, 100, 80, 5), sample(100, 100, replace = F))