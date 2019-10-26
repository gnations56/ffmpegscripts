#! /bin/bash
cd ./to_concat
for f in ./*.mp4; do mv "$f" "${f// /_}"; done
for f in ./*.mp4; do echo "file '$f'" >> mylist.txt; done
ffmpeg -f concat -i mylist.txt -c copy $(cat output.txt).mp4

