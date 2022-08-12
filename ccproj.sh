#!/bin/bash

############################################################
# Help                                                     #
############################################################
Help()
{
   # Display Help
   echo "Create CPP Project using your CLI."
   echo
   echo "Syntax: scriptTemplate [-n|h|v|V]"
   echo "options:"
   echo "n     Print the GPL license notification."
   echo "h     Print this Help."
   echo "v     Verbose mode."
   echo "V     Print software version and exit."
   echo
}

############################################################
# Create New Project                                       #
############################################################
NewProject()
{
    # Creating New Project
    echo "Creating new project..."
}


############################################################
# Main Program                                             #
############################################################
# Get options
while getopts ":h:n" option; do
    case $option in
        h) # display help
            Help
            exit;;
        \?) # invalid option
            echo "Error: Invalid Option"
            exit;;
        n) # new project
            NewProject
            exit;;
    esac
done

echo "Hello world!"
