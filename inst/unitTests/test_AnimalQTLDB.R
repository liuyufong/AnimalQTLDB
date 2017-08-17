test_AnimalQTLDB <- function(){
    checkEquals(NROW(AnimalQTLDB()), 7)
    checkTrue(AnimalQTLDB()[1,1] == 'table')
    checkEqualsNumeric(NCOL(AnimalQTLDB()), 5)
}