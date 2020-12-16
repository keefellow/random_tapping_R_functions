cal_coupon<-function(seq,all_states){
  
  source('coupons_remained.R')
  source('coupons_removed.R')
  
  coupons_results<-data.frame(matrix(0,1,1))
  #coupons_results<-rbind(c(100,0),coupons_results)
  #coupons_results<-NA
  n=0
  repeat {
    n=n+1
    #seq_x=op$remained
    removed<-coupons_removed(seq = seq_x, all_states)
    seq_x<-coupons_remained(seq = seq_x, all_states)
    #assign(paste0("op_",n),removed)
    coupons_results[n,1]<-length(removed)
    #op<-length(seq_x)
    #coupons_results<-c(coupons_results,op)
    if (length(seq_x) == 0){
      break
    }
  }
  
  is.na(coupons_results) <- coupons_results==0
  coupon<-colMeans(coupons_results, na.rm=TRUE) 
  coupon<-as.numeric(coupon)
  return(coupon)
}
