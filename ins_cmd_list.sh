##************* common commands list *************
##** create normal **
##oci compute instance create --profile $PV --db-name BJSCCADW0506 --cpu-core-count 1 --data-storage-size-in-tbs 1 --admin-password WelcomE__12345
##** create free-tier **
##oci compute instance create --profile $PV --is-free-tier true --db-workload DW --admin-password WelcomE__12345 --db-name ADWCUSG --cpu-core-count 1 --data-storage-size-in-tbs 1
##**
##oci compute instance list --profile $PV --output table --query "data [*].{C01_ID:id, C00_DbName:\"db-name\"}"
##**
##oci compute instance list --profile $PV --output table --query "data [*].{C00_InsName:\"display-name\", C01_DbName:\"db-name\", C02_OCPU:\"cpu-core-count\", C03_TB:\"data-storage-size-in-tbs\", C04_Verion:\"db-version\", C05_Status:\"lifecycle-state\", C06_CreateTime:\"time-created\"}"
##**
##oci compute instance get --profile $PV --autonomous-database-id 
##**
##oci compute instance generate-wallet --profile $PV --file /tmp/myWallet.zip --password Welcome_1 --autonomous-database-id 
##**
##oci compute instance update --profile $PV --is-auto-scaling-enabled True --autonomous-database-id 
##**
##oci compute instance delete --profile $PV --autonomous-database-id 
##**
##oci compute instance stop --profile $PV --autonomous-database-id 
##**
##oci compute instance start --profile $PV --autonomous-database-id 
##**
alias ins_hh='echo ins_lv shows current PV, ins_ll shows less, ins_ls shows more and ins_cc to clear'
alias ins_lv='echo current PV is [ $PV ], change it by command of [ export PV=XX ]'
alias ins_ll='oci compute instance list --profile $PV --output table --query "data [*].{C01_ID:id, C00_InsName:\"display-name\"}"'
alias ins_ls='oci compute instance list --profile $PV --output table --query "data [*].{C00_InsName:\"display-name\", C01_Shape:\"shape\", C02_Region:\"region\", C03_FD:\"fault-domain\", C04_OCPU:\"ocpus\",C05_RAM:\"memory-in-gbs\", C06_Status:\"lifecycle-state\", C07_CreateTime:\"time-created\"}"'
alias ins_al='cat ~/cloud_stuff/ins_cmd_list.sh | grep "##"'
alias ins_cc='unalias ins_hh;unalias ins_lv;unalias ins_ll;unalias ins_ls;unalias ins_cc;unalias ins_al'
echo '************* oci commands for adb ************'
echo 'Please use ins_hh to get help of fast commands'
echo 'Please use ins_al to show all'
ins_lv
echo '***********************************************'
