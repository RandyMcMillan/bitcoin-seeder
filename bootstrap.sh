#!/usr/bin/env bash

checkbrew() {

    if hash brew 2>/dev/null; then
        #brew update
        #brew upgrade
        #install brew libs
        brew install autoconf
        brew install automake
        brew install libtool
        brew install pkg-config
        brew install boost
        brew install boost-build
        #brew install opencv
        brew install cryptopp
        brew install openssl
        brew link openssl
        brew install gcc
        brew install make
        brew link make
        #If you need to have openssl@1.1 first in your PATH run:
        #  echo 'export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"' >> ~/.bash_profile
        #
        #For compilers to find openssl@1.1 you may need to set:
        #  export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
        #  export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
        #
        #For pkg-config to find openssl@1.1 you may need to set:
        #  export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"
        #make: *** No targets specified and no makefile found.  Stop.
        # If you need to have openssl@1.1 first in your PATH run:
        export PATH="/usr/local/opt/openssl@1.1/bin:$PATHi"
        export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
        export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
        export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"

        #For pkg-config to find openssl@1.1 you may need to set:
        export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"
        cd bitcoin-seeder
        make

    else

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    checkbrew

    fi
}

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    #apt update
    apt-get -y install build-essential libboost-all-dev libssl-dev
    checkbrew
    make
elif [[ "$OSTYPE" == "darwin"* ]]; then
    checkbrew

elif [[ "$OSTYPE" == "cygwin" ]]; then
    echo TODO add support for $OSTYPE
elif [[ "$OSTYPE" == "msys" ]]; then
    echo TODO add support for $OSTYPE
elif [[ "$OSTYPE" == "win32" ]]; then
    echo TODO add support for $OSTYPE
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    echo TODO add support for $OSTYPE
else
    echo TODO add support for $OSTYPE
fi

