#!/bin/bash
#
# usage: ./GridSaveAs <in> <out>  
# <in> and <out> must be the complete directory + name + extension.
# For whole directories, don't supply the name part of the <in> and <out>.
# <in> and <out> may also have a .zip or .gz extension.
#
# For more info, use: ./GridSaveAs
#
# This script converts a grid data file (or files) from one type to another.
# To make this Linux/Unix script executable, use "chmod +x GridSaveAs".
#
# A test which can be run from the GridSaveAs script's directory is
#   ./GridSaveAs ./QN2005193_2005193_ux10_westus.grd  ./QN2005193_2005193_ux10_westus.nc 
#
# original 2005-12-02  Bob Simons bob.simons@noaa.gov
# updated 2014-02-13  Bob Simons bob.simons@noaa.gov
#

commandLine=$0
tDir=`echo $commandLine | dirname $0`
cp1="$tDir/classes:$tDir/lib/netcdfAll-latest.jar"
cp2=":$tDir/lib/activation.jar:$tDir/lib/lucene-core.jar:$tDir/lib/mail.jar"
cp0="$cp1$cp2"

java -cp $cp0 -Xms1000M -Xmx1000M gov.noaa.pfel.coastwatch.griddata.GridSaveAs $1 $2 $3 $4 $5

# finished 
