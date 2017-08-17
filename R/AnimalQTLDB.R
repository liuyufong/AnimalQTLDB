#' connect to the local QTL database.
#' QTL data come from GFF3 format of Animalgenome (https://www.animalgenome.org/cgi-bin/QTLdb/index), in the process of data dump, the nonexistent assignment is NULL, and ultimately build the SQLite database of five data tables,named animalqtldb.db.
#' 
#' @return result
#' @export
#' @importFrom RSQLite dbConnect
#' @importFrom RSQLite dbDisconnect
#' @importFrom RSQLite dbGetQuery
#' @importFrom RSQLite SQLite
#' @import knitr
#' @examples 
#' AnimalQTLDB()
AnimalQTLDB <- function() {
    con <- dbConnect(SQLite(), system.file("extdata", "animalqtldb.db", package = "AnimalQTLDB"))
    if (isS4(con)) {
        result <- dbGetQuery(con, "SELECT * from sqlite_master")
    }
    dbDisconnect(con);
    return(result);
}
