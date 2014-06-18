# This function downloads the ENADE data of 2011 directly from the INEP web site.

DownloadData <- function(){
  
  ## Check if the directory for data already exists, if not, create it.
  if(!file.exists("data")){
    
    dir.create("data")
  }
  
  ## Get the URL file path
  fileUrl = paste("ftp://ftp.inep.gov.br/microdados/Enade_Microdados/",
                  "microdados_enade_2011.zip",sep="")
  
  
  ## Download the files and put them in the data directory
  download.file(url = fileUrl, destfile = "./data/microdados_enade_2011.zip")
  list.files("./data")
  
  dateDownloaded <- date()
  dateDownloaded
  
    
  ## Unzip files.
  unzip(zipfile = "./data/microdados_enade_2011.zip", overwrite=TRUE, 
        exdir = "./data")
 
  
    
}  
