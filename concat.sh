#! /bin/bash
cd ./to_concat
for f in ./*.mp4; do mv "$f" "${f// /_}"; done
for f in ./*.mp4; do echo "file '$f'" >> mylist.txt; done
ffmpeg -f concat -safe 0 -i mylist.txt -c:v copy -c:a aac $(cat output.txt).mp4

