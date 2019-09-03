#!/usr/bin/env sh

export UDEMYDL="./scripts/udemy-dl/udemy-dl.py"
export ACCESS_KEY="./access.key"
export DOWNLOAD_TARGET="./videos"
export RESOLUTION="720"   ## resolution: (320p, 480p, 720p)

LIST_TUTORIAL_URL=`cat list_course.txt`

print_line0(){
    echo "==========================================================================="
}

print_line1(){
    echo "---------------------------------------------------------------------------"
}

download_course() {
    for TUTORIAL in $LIST_TUTORIAL_URL
    do
      print_line0
      echo "### Download: $TUTORIAL ###"
      print_line0
      python $UDEMYDL $TUTORIAL -k $ACCESS_KEY -q $RESOLUTION -o $DOWNLOAD_TARGET
      print_line1
      echo ""
    done
}

main() {
  download_course
}

### START HERE ###
main $@
