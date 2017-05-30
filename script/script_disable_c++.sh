path=$1
wget http://www.mpich.org/static/downloads/3.2/mpich-3.2.tar.gz
tar xzf mpich-3.2.tar.gz
cd mpich-3.2
./configure --disable-cxx --prefix=$path 2>&1
make 2>&1
sudo make install 2>&1
echo "PATH=$path/bin:\$PATH ; export PATH" >> ~/.bashrc
cd ..
rm -R mpich-3.2
rm mpich-3.2.tar.gz
