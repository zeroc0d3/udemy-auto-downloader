#!/usr/bin/env sh

export UDEMYDL="./scripts/udemy-dl/udemy-dl.py"
export ACCESS_KEY="./access.key"
export DOWNLOAD_TARGET="./videos"
export RESOLUTION="720"   ## resolution: (320p, 480p, 720p)

export LIST_TUTORIAL_URL="https://www.udemy.com/kafka-cluster-setup \
https://www.udemy.com/course/learn-kubernetes \
https://www.udemy.com/docker-and-kubernetes-the-complete-guide \
https://www.udemy.com/grpc-golang \
https://www.udemy.com/linux-academy-red-hat-certified-systems-administrator-prep"


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
