#!/bin/bash

OUT="timelapse.mp4"

rm $OUT

# This depends upon cat properly ordering the files, which it generally should.
# cat may not handle large numbers of files appropriately -- a fix for a
# future time.

#cat data/*.png | ffmpeg -f image2pipe -framerate 10 -i - $OUT

ls -lh data | awk '{if( $5 > 0) print $9}' | sed "s:^:file data/:" > movieRecipe.txt

ffmpeg -safe 0 -f concat -r 24 -i movieRecipe.txt $OUT 
