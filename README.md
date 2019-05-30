## Overview
Inspired by [this Reddit thread](https://www.reddit.com/r/proceduralgeneration/comments/bu5ffk/blobs_20_source_code_in_the_comments/?utm_source=share&utm_medium=ios_app).

Initial color palette stolen from [Harold Fisk's map of the Mississippi River](http://www.radicalcartography.net/index.html?fisk).

## Usage
### Generating Palettes
1. `cd` into `palettes/`
1. Create a `.txt` file containing lines with one hex color code per line
1. Run `generate-palette.sh` and point it to your `.txt` file (e.g. `./generate-palette.sh fisk.txt`)

### Generating Results
1. Generate a palette image as described above
1. Download images (`.png` or `.jpg`) you would like to convert and place them in a directory
1. Run `fiskify.sh` and point it to the directory containing your images (e.g. `./fiskify.sh results`

## Dependencies
Depends on [ImageMagick](https://imagemagick.org/index.php).

## Example
![Robert Horvick Epcot](results/robert-horvick-1463719-unsplash.png)
