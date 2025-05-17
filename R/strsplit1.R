# Description: Function for seperating comma seperated strings
# A fairly common task when dealing with strings is the need to split a single string into many parts. The strsplit() function in base R does exactly this.
# The shape of this return value often surprises people or, at least, inconveniences them. The input is a character vector of length one and
# the output is a list of length one. This makes total sense in light of R’s fundamental tendency towards vectorization. But sometimes it’s still
# a bit of a bummer. Often you know that your input is morally a scalar, i.e. it’s just a single string, and really want the output to be the
# character vector of its parts.
