#Script Written by Kanishk Asthana
allFileNames=list.files(pattern="*.dat")

allData=sapply(allFileNames, function(fileName){read.csv(file=fileName,header=TRUE, sep="\t")})

#Taking a subset of data which is in the standard tabular format
uniformDataSubset=allData[c(-16,-17)]

uniformDataSubset=sapply(uniformDataSubset,function(data){data})