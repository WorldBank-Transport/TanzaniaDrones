#!/bin/bash
# this is a script that allows for the batch reprocessing of GeoTiffs to have
# the correct nodata profiles, so they can be used properly in packages that use
# GDAL by storing the nodata value in TIFF Tag ID 42113, instead of as an IEEE.
# This is expanded upon here:  gdal_translate -of GTiff -co PROFILE=GeoTIFF input.tif output.tif

echo

for file in *

#

do
  ls "$file"  # Lists all files in $PWD (current directory).
  gdal_translate -of GTiff -co PROFILE=GeoTIFF "$file" trans-"$file"
done

echo; echo

#for file in [jx]*
#do
# gdal_translate -of GTiff -co PROFILE=GeoTIFF input.tif output.tif
# echo "Exported file \"$file\"".
#done

#echo

exit 0
