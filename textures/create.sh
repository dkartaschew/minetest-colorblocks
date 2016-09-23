#!/bin/bash

# The following script will rebuild all colour variations from the two base images.
# Requires ImageMagick to be installed.

command -v convert >/dev/null 2>&1 || { echo >&2 "I require convert from ImageMagick but it's not installed.  Aborting."; exit 1; }

rm -f colorblocks_*_block.png
rm -f colorblocks_*_bblock.png

# Base blocks
convert colorblocks_base.png -colorspace gray -tint 200 +level-colors ,"#6666ff" colorblocks_blue_block.png 
convert colorblocks_base.png -colorspace gray -tint 200 +level-colors ,"#800000" colorblocks_red_block.png 
convert colorblocks_base.png -colorspace gray -tint 200 +level-colors ,"#d0d0d0" colorblocks_white_block.png 
convert colorblocks_base.png -colorspace gray -tint 200 +level-colors ,"#808080" colorblocks_grey_block.png 
convert colorblocks_base.png -colorspace gray -tint 200 +level-colors ,"#505050" colorblocks_dark_grey_block.png 
convert colorblocks_base.png -colorspace gray -tint 200 +level-colors ,"#202020" colorblocks_black_block.png 
convert colorblocks_base.png -colorspace gray -tint 200 +level-colors ,"#006666" colorblocks_cyan_block.png 
convert colorblocks_base.png -colorspace gray -tint 200 +level-colors ,"#006600" colorblocks_dark_green_block.png 
convert colorblocks_base.png -colorspace gray -tint 200 +level-colors ,"#336600" colorblocks_kahki_block.png 
convert colorblocks_base.png -colorspace gray -tint 200 +level-colors ,"#40d040" colorblocks_green_block.png 
convert colorblocks_base.png -colorspace gray -tint 200 +level-colors ,"#ffff00" colorblocks_yellow_block.png 
convert colorblocks_base.png -colorspace gray -tint 200 +level-colors ,"#663300" colorblocks_brown_block.png 
convert colorblocks_base.png -colorspace gray -tint 200 +level-colors ,"#ff8000" colorblocks_orange_block.png 
convert colorblocks_base.png -colorspace gray -tint 200 +level-colors ,"#ff3399" colorblocks_magenta_block.png 

# Blocks with bolts
convert colorblocks_base2.png -colorspace gray -tint 200 +level-colors ,"#6666ff" colorblocks_blue_bblock.png 
convert colorblocks_base2.png -colorspace gray -tint 200 +level-colors ,"#800000" colorblocks_red_bblock.png 
convert colorblocks_base2.png -colorspace gray -tint 200 +level-colors ,"#d0d0d0" colorblocks_white_bblock.png 
convert colorblocks_base2.png -colorspace gray -tint 200 +level-colors ,"#808080" colorblocks_grey_bblock.png 
convert colorblocks_base2.png -colorspace gray -tint 200 +level-colors ,"#505050" colorblocks_dark_grey_bblock.png 
convert colorblocks_base2.png -colorspace gray -tint 200 +level-colors ,"#202020" colorblocks_black_bblock.png 
convert colorblocks_base2.png -colorspace gray -tint 200 +level-colors ,"#006666" colorblocks_cyan_bblock.png 
convert colorblocks_base2.png -colorspace gray -tint 200 +level-colors ,"#006600" colorblocks_dark_green_bblock.png 
convert colorblocks_base2.png -colorspace gray -tint 200 +level-colors ,"#336600" colorblocks_kahki_bblock.png 
convert colorblocks_base2.png -colorspace gray -tint 200 +level-colors ,"#40d040" colorblocks_green_bblock.png 
convert colorblocks_base2.png -colorspace gray -tint 200 +level-colors ,"#ffff00" colorblocks_yellow_bblock.png 
convert colorblocks_base2.png -colorspace gray -tint 200 +level-colors ,"#663300" colorblocks_brown_bblock.png 
convert colorblocks_base2.png -colorspace gray -tint 200 +level-colors ,"#ff8000" colorblocks_orange_bblock.png 
convert colorblocks_base2.png -colorspace gray -tint 200 +level-colors ,"#ff3399" colorblocks_magenta_bblock.png 

