#this is the live API
cloudAPI <- "https://cloud.iexapis.com/stable"

#this is the testing sandbox
sandboxAPI <- "https://sandbox.iexapis.com/stable"

setAPIEnvironment <- function(apiEnv = NULL){
  if(apiEnv == "Cloud"){
    base <- "https://cloud.iexapis.com/stable"
  }
  else if(apiEnv == "Sandbox"){
    base <- "https://sandbox.iexapis.com/stable"
  }
  else{
    print("apiEnv was not set properly, try `Cloud` or 'Sandbox'")
    base <- NA
  }
  return(base)
}

setAPIToken <- function(apiEnv = NULL){
  if(apiEnv == "Cloud"){
    token <- Sys.getenv("iexCloudSecret")
  }
  else if(apiEnv == "Sandbox"){
    token <- Sys.getenv("iexSandboxSecret")
  }
  else{
    print("apiEnv was incorrectly set")
    token <- NA
  }
  return(token)
}
