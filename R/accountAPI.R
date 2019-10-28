#' @name getAccountMetadata
#' @dataWeighting = Free
#' @dataTiming = Start users - End of Day
#' @dataTiming = Launch/Grow/Scale - Real-time
#' @notes Requires SK token to access
#' @apiEndPoint /account/metadata
#' @details It appears that R returns the effective date as a numeric value
#' @export
getAccountMetadata <- function(){
  #note env is not a parameter as this end point is not accessible on the sandbox
  requestURL <- paste("https://cloud.iexapis.com/stable/", "account/metadata", "?token=", Sys.getenv("iexCloudSecret"), sep = "")
  requestGET <- httr::GET(requestURL)
  requestReturn <- httr::content(requestGET)
  return(requestReturn)
}

#' @name getAccountUsage
#' @param type = Optional. Used to specify which quota to return (messages, rules, rule-record, alerts, alert-records)
#' @dataWeighting = Free
#' @dataTiming = Real-time
#' @note Requires SK token to access
#' @note Billing resets on the first of every month at 00:00:00 UTC
#' @apiEndPoint /account/usage/{type}
#' @details It appears that type = alert is not valid to people without a scale account (undocumented)
#' @export
getAccountUsage <- function(type = NULL){
  #note env is not a parameter as this end point is not accessible on the sandbox
  requestURL <- paste("https://cloud.iexapis.com/stable/", "account/usage/", type, "?token=", Sys.getenv("iexCloudSecret"), sep = "")
  requestGET <- httr::GET(requestURL)
  requestReturn <- httr::content(requestGET)
  return(requestReturn)
}

#' @name enablePayAsYouGo
#' THIS FUNCTION IS NOT WORKING AT THE MOMEMENT
#' @param protection = Used to ensure that you actually want to turn on pay as you go
#' @param allow = Boolean. Used to enable pay-as-you-go (True) or disable (False)
#' @dataWeighting = Free
#' @dataTiming = N/A
#' @note when you turn off pay-as-you-go there is a 30 second before you can re-enable
#' @note Requires SK token to access
#' @apiEndPoint /account/payasyougo
#' @export
#enablePayAsYouGo <- function(protection = TRUE, allow = TRUE){
  if(protection == TRUE){
    print("To enable pay as you go (this can increase billing costs) set protection to False")
    break()
  }
  else{
    requestURL <- paste("https://cloud.iexapis.com/stable/", "/account/payasyougo/", "token=", Sys.getenv("iexCloudSecret"), "&allow=", allow, sep = "")
  }
}

#' @name setMessageBudget
#'



