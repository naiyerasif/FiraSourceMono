#!/bin/sh

echo "Generating light variant"
python pyftfeatfreeze.py -f 'ss01,ss03,ss19' -S -U 'Mono' -R 'Code/Source' FiraCode-Light.ttf FiraSource-Light.ttf

echo "Generating regular variant"
python pyftfeatfreeze.py -f 'ss01,ss03,ss19' -S -U 'Mono' -R 'Code/Source' FiraCode-Regular.ttf FiraSource-Regular.ttf

echo "Generating medium variant"
python pyftfeatfreeze.py -f 'ss01,ss03,ss19' -S -U 'Mono' -R 'Code/Source' FiraCode-Medium.ttf FiraSource-Medium.ttf

echo "Generating bold variant"
python pyftfeatfreeze.py -f 'ss01,ss03,ss19' -S -U 'Mono' -R 'Code/Source' FiraCode-Bold.ttf FiraSource-Bold.ttf

echo "Generating retina variant"
python pyftfeatfreeze.py -f 'ss01,ss03,ss19' -S -U 'Mono' -R 'Code/Source' FiraCode-Retina.ttf FiraSource-Retina.ttf

rm -rf dist
mkdir dist
mv FiraSource-*.ttf dist

echo "Done!"