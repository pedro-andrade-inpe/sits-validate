
require(sits.validate)

classificationsDir = "~/TWDTWAmazoniaCerrado/RasterData/"

LUC2015 <- raster::raster(paste0(classificationsDir, "Luciara_MT/classificacoes/LUC-class-Cerrado_28022018_2014_8_2015_8.tif"))
ADN2015 <- raster::raster(paste0(classificationsDir, "AlvoradaDoNorte_GO/classificacoes/ADN-class-Cerrado_28022018_2014_8_2015_8.tif"))

result1 <- summarizeOneByStates(LUC2015)
result2 <- summarizeOneByStates(ADN2015)

result1
result2

output <- joinClassifications(list(result1, result2))

output
