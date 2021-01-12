#mkdir -p $HOME/ADWCUSG
#cd $HOME/ADWCUSG
#unzip /tmp/myWallet.zip
export CLIENT_HOME=/usr/lib/oracle/19.8/client64
export LD_LIBRARY_PATH=$CLIENT_HOME/lib
export PATH=$PATH:$CLIENT_HOME/bin
export TNS_ADMIN=$HOME/ADWCUSG
#source $HOME/.bashrc
#sed -i "s#?/network/admin#$HOME/ADWCUSG#" sqlnet.ora
#cat $TNS_ADMIN/tnsnames.ora
sqlplus admin/WelcomE__12345@db202012311000_low
