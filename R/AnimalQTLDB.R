#' connect QTL database
#' 
#' @return result
#' @export
#' @importFrom RSQLite dbConnect
#' @importFrom RSQLite dbDisconnect
#' @importFrom RSQLite SQLite
#' @import knitr
#' @examples 
#' AnimalQTLDB()
AnimalQTLDB<-function(){
con <- dbConnect(SQLite(), system.file("extdata","animalqtldb.db",
package = "AnimalQTLDB"));
if(isS4(con)){
    result<-TRUE;
}
    return(result);
}