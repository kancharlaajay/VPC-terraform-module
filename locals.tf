locals {
  resource_name = "${var.project}-${var.environment}"
  az_names = slice(data.aws_availability_zones.available.names, 0, 2)  #Slice is a function here we need only 0,1 index but in slice fuction need to take n+1 as exclusive 
}




#slice (function) extracts some consecutive elements from within a list.
#syntax: slice(list, startindex, endindex)
#startindex is inclusive, while endindex is exclusive. This function returns an error if either index is outside the bounds of valid indices for the given list.
