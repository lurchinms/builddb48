sudo apt-get install build-essential libtool autotools-dev autoconf libssl-dev libboost-all-dev software-properties-common nano git
sudo sudo apt-get install libevent-dev


wget http://download.oracle.com/berkeley-db/db-4.8.30.zip
unzip db-4.8.30.zip
cd db-4.8.30
sed -i 's/__atomic_compare_exchange/__atomic_compare_exchange_db/g' dbinc/atomic.h

cd build_unix/

../dist/configure --prefix=/usr/local --enable-cxx

make

sudo make install

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/lib"


