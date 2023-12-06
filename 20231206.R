oneComingStudentMajor <- sample(c("Economics", "Sociology"), 1)
# oneComingStudentMajor == "Economics"
print("Please go to room 201.")

# oneComingStudentMajor == "Sociology"
print("Please go to room 301.")
if(oneComingStudentMajor == "Economics"){
  print("Please go to room 201.")
}

if(oneComingStudentMajor == "Sociology"){
  print("Please go to room 301.")
}
if(...){....}
# T flag will always release the block for execution
if(T){print("TRUE block")}
# F flag will never release the block for execution
if(F){print("FALSE block")}
# T flag will always release the block for execution
if(c(T,T)){print("TT")}
if(c(T,F)){print("TF")}
if(c(F,F)){print("FF")}
if(c(F,T)){print("FT")}
# Use any() / all() if appropriate
if(c("a", "b")=="a"){print("case 1")}
if(any(c("a", "b")=="a")){print("case 2")}
if(all(c("a", "b")=="a")){print("case 3")}
# use `isTRUE` to ensure the block is relased only when a legitimate flag value of TRUE happens
if(isTRUE(T)){print("case 1")}
if(isTRUE("a")){print("case 2")}
if(isTRUE(c(T,T))){print("case 3")}
if(isTRUE(NA)){print("case 4")}

# there is also `isFALSE`.