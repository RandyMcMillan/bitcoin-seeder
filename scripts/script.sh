#!/usr/bin/env bash
echo "  ___   ___  ____    ___   ____   _____ "
echo " (  _( / _( /  _ \  )_ _( )  _)\ )__ __("
echo " _) \  ))_  )  ' /  _| |_ | '__/   | |  "
echo ")____) \__( |_()_\ )_____()_(      )_(  "
echo

if [[ "$OSTYPE" == "linux-gnu" ]]; then

  if [[ $EUID -ne 0 ]]; then

    sudo /usr/sbin/./iftop

  else

    /usr/sbin/./iftop

  fi

fi

if [[ "$OSTYPE" == "darwin"* ]]; then

  if [[ $EUID -ne 0 ]]; then

    #sudo /usr/local/sbin/./iftop -i $(ACTIVE=$(ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active') && echo ${ACTIVE:0:3})
    sudo /usr/local/sbin/./iftop -i $(ACTIVE=$(ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active') && echo ${ACTIVE:0:3})

  else

    #/usr/local/sbin/./iftop -i $(ACTIVE=$(ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active') && echo ${ACTIVE:0:3})
    /usr/local/sbin/./iftop# -i $(ACTIVE=$(ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active') && echo ${ACTIVE:0:3})

  fi

fi
