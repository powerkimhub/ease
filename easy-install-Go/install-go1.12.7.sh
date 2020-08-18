# 패키지 목록 업데이트
sudo apt update

# Go 패키지 설치
wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
tar -xvf go1.12.7.linux-amd64.tar.gz

# Go 환경설정
mkdir $HOME/gosrc
echo "" >> .bashrc
echo "# for Go env" >> .bashrc
echo "export GOPATH=$HOME/gosrc;" >> .bashrc
echo "export GOROOT=$HOME/go;" >> .bashrc 
echo "export PATH=$PATH:$GOROOT/bin;" >> .bashrc

# after running this
# source .bashrc
