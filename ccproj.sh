#!/bin/bash

############################################################
# Help                                                     #
############################################################
help()
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
new_project()
{
    # Creating New Project
    project_dir=$PWD
    setup_dir
}

############################################################
# Directory Set Up                                         #
############################################################
setup_dir()
{
    # Create project directory
    echo "Creating project directory..."
    mkdir "$project_dir/$project_name"

    cd "$project_dir/$project_name"
    echo "$PWD"

    folder_names=("bin" "include" "lib" "doc" "build" "src")
    for str in ${folder_names[@]};do
        echo "Creating ${str}..."
        mkdir "${str}"
    done
    echo "Directory setup finished"
}

############################################################
# Main Program                                             #
############################################################

# Set Variabels
project_name="Untitled"

############################################################
# Get Options                                              #
############################################################
while getopts ":hn:" option; do
    case $option in
        h) # display help
            help
            exit;;
        \?) # invalid option
            echo "Error: Invalid Option"
            exit;;
        n) # new project
            project_name=$OPTARG
            new_project
            exit;;
    esac
done

echo "Hello $project_name!"
