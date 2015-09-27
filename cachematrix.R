####Caching The Inverse Of A Matrix---------Sanders, J.R.
###################START OF FUNCTION 1 makeCacheMatrix##################
makeCacheMatrix<-function(a,b,c,d,rowm,colm) {
 
 mframe<-data.frame()
 ww<-matrix(c(a,b,c,d),nrow=rowm,ncol=colm,byrow=TRUE)
 ww
 enverta = solve(ww)
 mframe<-data.frame(ww,enverta)
 ######Global Assignment Made aka Caching of Inverse###
 envert<<-solve(ww)
 ################
 mframe
   }

############################END OF THE FUNCTION 1#####################


######################START OF FUNCTION 2- cacheSolve############################
cacheSolve<-function(invec){
newinvec<-data.frame()
######################Calling Inverse From The Cache Global Assignment#######
B<-envert
############################################################################
         if ( identical(B,invec)   ){
           print("Already cached inverse of matrices")
           iden<-data.frame(B,invec)
           iden  
         }  else {
            print("Cached Does Not Match New")
            print("Original Matrix Cached Inverse And New Matrix Inverse")
          #  C<-matrix(invec,nrow=2,ncol=2,byrow=TRUE)
            # invert<-solve(invec)
            newinvec<-data.frame(B,invec)
            newinvec
         }
}
#################################################
######Input To Cached Matrix  Whose Inverse Is Created In makeCache####
#Section 3################## Input for function 1 Cached Matrix###############################
makeCacheMatrix(8,9,10,11,2,2)
beforeinversematrix=matrix(c(8,9,10,11),nrow=2,ncol=2,byrow=TRUE)
#####################################################

##################################Input For cacheSolve#################
##Section 4############This is where Newmatrix Is Created And Inverse Taken#######################
newmatrix=matrix(c(8,9,10,11),nrow=2,ncol=2,byrow=TRUE)
uimat<-newmatrix
inversenewmatrix<-solve(uimat)

#######Section 5###############################################################
inputmatrixcompare=data.frame()
inputmatrixcompare=data.frame( beforeinversematrix,newmatrix)
print("Matrix Orginal and New Matrix Inverse Has Not Been Taken")
inputmatrixcompare
########Section 6################################################
cacheSolve(inversenewmatrix)
###########################################################################

