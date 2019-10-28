# getAdvanceStats ---------------------------------------------------------
#' @name getAdvancedStats
#' @description Returns everything in key stats plus additional advanced stats such as EBITDA, ratios, key financial data, and more.
#' @param apiEnv = Cloud or Sandbox
#' @param symbol = the symbol/symbols to request
#' @dataWeighting = 3000 per symbol + key stats weight
#' @dataTiming = End of day
#' @dataSchedule = 4am, 5am ET
#' @dataSources = Primary Partner
#' @note Requires paid subscription
#' @note Billing resets on the first of every month at 00:00:00 UTC
#' @apiEndPoint /stock/{symbol}/advanced-stats/
#' @export
getAdvanceStats <- function(apiEnv = NULL, symbol = NULL){
  apiBase <- setAPIEnvironment(apiEnv = apiEnv)
  apiToken <- setAPIToken(apiEnv = apiEnv)
  requestURL <- paste(apiBase, "/stock/", symbol, "/advanced-stats/", "?token=", apiToken, sep = "")
  print(requestURL)
  requestGET <- httr::GET(requestURL)
  requestReturn <- httr::content(requestGET)
}




# getBalanceSheet ---------------------------------------------------------
#' @name getBalanceSheet
#' @description Pulls balance sheet data. Available quarterly or annually with the default being the last available quarter.
#' @param apiEnv = Cloud or Sandbox
#' @param symbol = the symbol/symbols to request
#' @param period = You can specify annual or quarter (default)
#' @param last = number of quarter or years to return 12 quarters or 4 years max (1 quarter by default)
#' @dataWeighting = 3000 per symbol per period
#' @dataTiming = End of day
#' @dataSchedule = 8am, 9am UTC Daily
#' @dataSources = Primary Partner
#' @note Requires paid subscription
#' @note Financial information is limited for some financial firms.
#' @apiEndPoint /stock/{symbol}/balance-sheet?period={period}?last={last}
#' @export
getBalanceSheet <- function(apiEnv = NULL, symbol = NULL, period = "quarter", last = 1){
  apiBase <- setAPIEnvironment(apiEnv = apiEnv)
  apiToken <- setAPIToken(apiEnv = apiEnv)
  requestURL <- paste(apiBase, "/stock/", symbol, "/balance-sheet?period=", period, "?last=", last, "&token=", apiToken, sep = "")
  print(requestURL)
  requestGET <- httr::GET(requestURL)
  requestReturn <- httr::content(requestGET)
}






# getBatchRequest ---------------------------------------------------------
# Is this needed?



# getBook -----------------------------------------------------------------
#' @name getBook
#' @description returns the current book for a specific stook
#' @param apiEnv = Cloud or Sandbox
#' @param symbol = the symbol/symbols to request
#' @dataWeighting = 1 per quote returned
#' @dataTiming = Real-time + 15min delay
#' @dataSchedule = Real-time during IEX market hours
#' @dataSources = IEX, Primary Partner, Consolidated Tape
#' @apiEndPoint /stock/{symbol}/book
#' @export
getBook <- function(apiEnv = NULL, symbol = NULL){
  apiBase <- setAPIEnvironment(apiEnv = apiEnv)
  apiToken <- setAPIToken(apiEnv = apiEnv)
  requestURL <- paste(apiBase, "/stock/", symbol, "/book", "?token=", apiToken, sep = "")
  print(requestURL)
  requestGET <- httr::GET(requestURL)
  requestReturn <- httr::content(requestGET)
}




# getCashFlow -------------------------------------------------------------
#' @name getCashFlow
#' @description Pulls cash flow data. Available quarterly or annually, with the default being the last available quarter.
#' @param apiEnv = Cloud or Sandbox
#' @param symbol = the symbol/symbols to request
#' @param period = You can specify annual or quarter (default)
#' @param last = number of quarter or years to return 12 quarters or 4 years max (1 quarter by default)
#' @dataWeighting = 1000 per symbol per period
#' @dataTiming = End of day
#' @dataSchedule = 8am, 9am UTC
#' @dataSources = Primary Partner
#' @note Requires paid subscription
#' @apiEndPoint /stock/{symbol}/cash-flow?period={period}?last={last}
#' @export
getCashflow <- function(apiEnv = NULL, symbol = NULL, period = "quarter", last = 1){
  apiBase <- setAPIEnvironment(apiEnv = apiEnv)
  apiToken <- setAPIToken(apiEnv = apiEnv)
  requestURL <- paste(apiBase, "/stock/", symbol, "/cash-flow", "?period=", period, "&last=", last, "&token=", apiToken, sep = "")
  print(requestURL)
  requestGET <- httr::GET(requestURL)
  requestReturn <- httr::content(requestGET)
}


# getCollections ----------------------------------------------------------
#to be done latter


# getCompany --------------------------------------------------------------
#' @name getCompany
#' @description Returns information about the company
#' @param apiEnv = Cloud or Sandbox
#' @param symbol = the symbol/symbols to request
#' @dataWeighting = 1 per symbol
#' @dataTiming = End of day
#' @dataSchedule = 4am and 5am UTC every day
#' @dataSources = Primary Partner
#' @note Requires paid subscription
#' @apiEndPoint /stock/{symbol}/company
#' @export
getCompany <- function(apiEnv = NULL, symbol = NULL){
  apiBase <- setAPIEnvironment(apiEnv = apiEnv)
  apiToken <- setAPIToken(apiEnv = apiEnv)
  requestURL <- paste(apiBase, "/stock/", symbol, "/company", "?token=", apiToken, sep = "")
  print(requestURL)
  requestGET <- httr::GET(requestURL)
  requestReturn <- httr::content(requestGET)
}


# getDelayedQuote ---------------------------------------------------------
#test

