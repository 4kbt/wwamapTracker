#!/bin/bash

OUT="timelapse.mp4"

rm $OUT

# This depends upon cat properly ordering the files, which it generally should.
# cat may not handle large numbers of files appropriately -- a fix for a
# future time.

cat data/*.png | ffmpeg -f image2pipe -framerate 10 -i - $OUT
