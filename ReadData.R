ReadData <- function(){
  
  ## Check if the data file was already created
  file = "./data/microdados_enade_2011/2.DADOS/ENADE.csv"
  if (file.exists(file)){
    data = read.csv2(file, header=TRUE)
  } else {
  
        ## install and load the SAScii package
        if(require('SAScii')== FALSE){
          install.packages("SAScii")
        }
        require('SAScii')
        
        
        #Location of the ENADE 2011 data.
        data_location <- "./data/microdados_enade_2011/2.DADOS/ENADE_2011.txt"
          
        
        #Location of the ENADE 2011 import instructions.
        dictionary_location <- "./data/microdados_enade_2011/3.INPUTS/INPUT_SAS.sas"
        
        #Load the 2009 Medical Expenditure Panel Survey Emergency Room Visits File
        #NOTE: The SAS INPUT command occurs at line 273.
        data <- 
          read.SAScii ( 
            data_location , 
            dictionary_location , 
            zipped = F , 
            beginline = 15 )
        
        #save the data frame now for instantaneous loading later
        save( data , file = "./data/microdados_enade_2011/2.DADOS/ENADE.csv" )
        
        
        write.csv2(data, "./data/microdados_enade_2011/2.DADOS/ENADE.csv", 
                   row.names=FALSE )
  }
  
  return(data)
  
}