## Overview
Fisk is a quick and dirty wrapper for [ImageMagick](https://imagemagick.org/index.php) that makes it easy to generate interesting images for use as wallpapers.

I was inspired by [this Reddit thread](https://www.reddit.com/r/proceduralgeneration/comments/bu5ffk/blobs_20_source_code_in_the_comments/?utm_source=share&utm_medium=ios_app).

Initial color palette (and project name) stolen from [Harold Fisk's map of the Mississippi River](http://www.radicalcartography.net/index.html?fisk).

## Usage
### Generating Palettes
1. `cd` into `palettes/`
1. Create a `.txt` file containing lines with one hex color code per line
1. Run `generate-palette.sh` and point it to your `.txt` file (e.g. `./generate-palette.sh fisk.txt`)

### Generating Results
> Running `fiskify.sh` will replace images instead of safely creating copies.

1. Generate a palette image as described above
1. Download images (`.png` or `.jpg`) you would like to convert and place them in a directory
1. Run `fiskify.sh` and point it to your palette and the directory containing your images (e.g. `./fiskify.sh palettes/fisk.png results`

## Notes
- Limiting your color palette to 4-6 colors works best.
- macOS does not preserve crisp pixels for wallpaper images that are cropped in a portrait orientation so `fiskify.sh` automatically crops finalized images to an acceptable aspect ratio. If your portrait wallpaper has a focal point not in the center, crop the image prior to running `fiskify.sh`.

## Dependencies
Depends on [ImageMagick](https://imagemagick.org/index.php).

## Example
![Robert Horvick Epcot](results/robert-horvick-1463719-unsplash.png)
