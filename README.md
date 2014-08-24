## instructions for running project script file: "run_analysis.r"

# 1. use: getwd() to check current working directory

# 2. place the run_analysis.r in your current working directory

# 3. place the unzipped dataset folder "UCI HAR Dataset" in the current 
      working directory, the run_analysis.r script assumes unzipped dataset folder "UCI HAR Dataset" is in the current working directory.

# 4. In r-console, runs script as follows: 

#    source("run_analysis.r")  

#    run_analysis()

# 5. the script will create a "tidy.txt" file in current working directory

# e.g. if "c:\mydir\" is your work directory 
        
# a. unzipped dataset folder "UCI HAR Dataset" will be at: "c:\mydir\UCI HAR Dataset\"
        
# b. analysis script will be at: "c:\mydir\run_analysis.r"
        
# c. generated tidy.txt file will be at: "c:\mydir\tidy.txt"



## DATA DICTIONARY


# convention used to make variables descriptive: camel notation, prefix "t" transforms to "timeDomain", prefix "f" frequencyDomain" based on documentation on features and readme

# e.g.  tBodyAcc-mean()-Z  transforms to timeDomainBodyAccelerationMeanZaxis

# e.g.  fBodyAcc-mean()-Z  transforms to frequencyDomainBodyAccelerationMeanZaxis


##variables: 


# activity 
#      activity label of subjects
#          WALKING
#          WALKING_UPSTAIRS

#          WALKING_DOWNSTAIRS

#          SITTING

#          STANDING

#          LAYING



# subject 
#      numeric identifier of subject who carried out the experiment
#      1..30  



# timeDomainBodyAccelerationMeanXaxis
# timeDomainBodyAccelerationMeanYaxis
# timeDomainBodyAccelerationMeanZaxis
# timeDomainBodyAccelerationStandardDeviationXaxis
# timeDomainBodyAccelerationStandardDeviationYaxis
# timeDomainBodyAccelerationStandardDeviationZaxis
# timeDomainGravityAccelerationMeanXaxis
# timeDomainGravityAccelerationMeanYaxis
# timeDomainGravityAccelerationMeanZaxis
# timeDomainGravityAccelerationStandardDeviationXaxis
# timeDomainGravityAccelerationStandardDeviationYaxis
# timeDomainGravityAccelerationStandardDeviationZaxis
# timeDomainBodyAccelerationJerkMeanXaxis
# timeDomainBodyAccelerationJerkMeanYaxis
# timeDomainBodyAccelerationJerkMeanZaxis
# timeDomainBodyAccelerationJerkStandardDeviationXaxis
# timeDomainBodyAccelerationJerkStandardDeviationYaxis
# timeDomainBodyAccelerationJerkStandardDeviationZaxis
# timeDomainBodyGyroMeanXaxis
# timeDomainBodyGyroMeanYaxis 
# timeDomainBodyGyroMeanZaxis
# timeDomainBodyGyroStandardDeviationXaxis
# timeDomainBodyGyroStandardDeviationYaxis
# timeDomainBodyGyroStandardDeviationZaxis
# timeDomainBodyGyroJerkMeanXaxis
# timeDomainBodyGyroJerkMeanYaxis
# timeDomainBodyGyroJerkMeanZaxis
# timeDomainBodyGyroJerkStandardDeviationXaxis
# timeDomainBodyGyroJerkStandardDeviationYaxis 
# timeDomainBodyGyroJerkStandardDeviationZaxis
# timeDomainBodyAccelerationMagnitudeMean
# timeDomainBodyAccelerationMagnitudeStandardDeviation
# timeDomaingravityAccelerationMagnitudeMean
# timeDomaingravityAccelerationMagnitudeStandardDeviation
# timeDomainBodyAccelerationJerkMagnitudeMean
# timeDomainBodyAccelerationJerkMagnitudeStandardDeviation
# timeDomainBodyGyroMagnitudeMean
# timeDomainBodyGyroMagnitudeStandardDeviation
# timeDomainBodyGyroJerkMagnitudeMean
# timeDomainBodyGyroJerkMagnitudeStandardDeviation

frequencyDomainBodyAccelerationMeanXaxis
frequencyDomainBodyAccelerationMeanYaxis
frequencyDomainBodyAccelerationMeanZaxis
frequencyDomainBodyAccelerationStandardDeviationXaxis
frequencyDomainBodyAccelerationStandardDeviationYaxis
frequencyDomainBodyAccelerationStandardDeviationZaxis 
frequencyDomainBodyAccelerationMeanFrequencyXaxis 
frequencyDomainBodyAccelerationMeanFrequencyYaxis
frequencyDomainBodyAccelerationMeanFrequencyZaxis
frequencyDomainBodyAccelerationJerkMeanXaxis
frequencyDomainBodyAccelerationJerkMeanYaxis
frequencyDomainBodyAccelerationJerkMeanZaxis 
frequencyDomainBodyAccelerationJerkStandardDeviationXaxis
frequencyDomainBodyAccelerationJerkStandardDeviationYaxis
frequencyDomainBodyAccelerationJerkStandardDeviationZaxis
frequencyDomainBodyAccelerationJerkMeanFrequencyXaxis
frequencyDomainBodyAccelerationJerkMeanFrequencyYaxis 
frequencyDomainBodyAccelerationJerkMeanFrequencyZaxis
frequencyDomainBodyGyroMeanXaxis
frequencyDomainBodyGyroMeanYaxis 
frequencyDomainBodyGyroMeanZaxis
frequencyDomainBodyGyroStandardDeviationXaxis
frequencyDomainBodyGyroStandardDeviationYaxis
frequencyDomainBodyGyroStandardDeviationZaxis
frequencyDomainBodyGyroMeanFrequencyXaxis
frequencyDomainBodyGyroMeanFrequencyYaxis
frequencyDomainBodyGyroMeanFrequencyZaxis
frequencyDomainBodyAccelerationMagnitudeMean
frequencyDomainBodyAccelerationMagnitudeStandardDeviation
frequencyDomainBodyAccelerationMagnitudeMeanFrequency
frequencyDomainBodyBodyAccelerationJerkMagnitudeMean
frequencyDomainBodyBodyAccelerationJerkMagnitudeStandardDeviation
frequencyDomainBodyBodyAccelerationJerkMagnitudeMeanFrequency 
frequencyDomainBodyBodyGyroMagnitudeMean
frequencyDomainBodyBodyGyroMagnitudeStandardDeviation
frequencyDomainBodyBodyGyroMagnitudeMeanFrequency
frequencyDomainBodyBodyGyroJerkMagnitudeMean
## frequencyDomainBodyBodyGyroJerkMagnitudeStandardDeviation
## frequencyDomainBodyBodyGyroJerkMagnitudeMeanFrequency
 