
coupons_removed<-function(seq,all_states){


results<-NULL
sequence_removed<-NULL
#foo <- 12
#bar <- c("a", "b", "e")

  for ( k in 1:length(seq)){
    this<-seq[k]
    sequence_removed<-c(sequence_removed,this)
    if (this %in% all_states){
      loc<-match(this,all_states)
      all_states<-all_states[-(loc)]
      
        if (length(all_states)==0)
        { 
          results<- c(results, k)
          seq<-seq[-(1:k)]
          #sequence_removed<-seq[1:k]
          #newList<-list('remained'=seq,'removed'=sequence_removed)
          return(sequence_removed)
          #return(seq)
          #return(results)
          #newList <- list("results" = results, "seq" = seq)
          
          #return(newList)
          
      #print(seq)
      #break 
        }
  }
}
}
