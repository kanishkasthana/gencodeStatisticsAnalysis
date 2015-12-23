#Script Written by Kanishk Asthana
allFileNames=list.files(pattern="*.dat")

allData=sapply(allFileNames, function(fileName){read.csv(file=fileName,header=TRUE, sep="\t")})

#Taking a subset of data which is in the standard tabular format
uniformDataSubset=allData[c(-20,-21)]
version3d=allData[20]
version3c=allData[21]

totalGenesFromUniformData=sapply(uniformDataSubset,function(data){
  return(data$genes[data$biotype=="protein_coding"])
})

data=as.data.frame(allData[1])
