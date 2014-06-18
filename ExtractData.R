## Esse script é usado para extrair somente os dados do municipio de Sao Jose
# dos Campos das tabelas da amostra do Censo de 2010.

ExtractData <-function(data, ies, course){
  
  #rm(list=ls())
  ## Get the index of the course selected
  course_index = which(data$CO_GRUPO == course)
  
  ## Extract the data for the course selected
  selected_course_data = data[course_index,] 
  
  ## Get the index of the ies and course selected
  ies_index = which(selected_course_data$CO_IES == ies)
  
  ## Extract the data for the ies and course selected
  selected_course_ies_data = data[ies_index,] 

 
  return(selected_course_ies_data)
  
}
