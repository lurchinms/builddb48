sudo apt-get install build-essential libtool autotools-dev autoconf libssl-dev libboost-all-dev software-properties-common git 
sudo sudo apt-get install libevent-dev
sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libqrencode-dev build-essential libtool autotools-dev automake pkg-config bsdmainutils python3 libssl-dev libevent-dev libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-test-dev libboost-thread-dev libdb5.3++-dev 
sudo apt-get install make automake cmake curl g++-multilib libtool binutils-gold bsdmainutils pkg-config python3


wget http://download.oracle.com/berkeley-db/db-4.8.30.zip
unzip db-4.8.30.zip
cd db-4.8.30
sed -i 's/__atomic_compare_exchange/__atomic_compare_exchange_db/g' dbinc/atomic.h

cd build_unix/

../dist/configure --prefix=/usr/local --enable-cxx

make

sudo make install

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/lib"


