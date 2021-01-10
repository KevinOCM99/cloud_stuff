##************* common commands list *************
##** create normal **
##oci db autonomous-database create --profile $PV --db-name BJSCCADW0506 --cpu-core-count 1 --data-storage-size-in-tbs 1 --admin-password WelcomE__12345
##** create free-tier **
##oci db autonomous-database create --profile $PV --is-free-tier true --db-workload DW --admin-password WelcomE__12345 --db-name ADWCUSG --cpu-core-count 1 --data-storage-size-in-tbs 1
##**
##oci db autonomous-database list --profile $PV --output table --query "data [*].{C01_ID:id, C00_DbName:\"db-name\"}"
##**
##oci db autonomous-database list --profile $PV --output table --query "data [*].{C00_InsName:\"display-name\", C01_DbName:\"db-name\", C02_OCPU:\"cpu-core-count\", C03_TB:\"data-storage-size-in-tbs\", C04_Verion:\"db-version\", C05_Status:\"lifecycle-state\", C06_CreateTime:\"time-created\"}"
##**
##oci db autonomous-database get --profile $PV --autonomous-database-id 
##**
##oci db autonomous-database generate-wallet --profile $PV --file /tmp/myWallet.zip --password Welcome_1 --autonomous-database-id 
##**
##oci db autonomous-database delete --profile $PV --autonomous-database-id 
##**
##oci db autonomous-database stop --profile $PV --autonomous-database-id 
##**
##oci db autonomous-database start --profile $PV --autonomous-database-id 
##**
alias adb_hh='echo adb_lv shows current PV, adb_ll shows less, adb_ls shows more and adb_cc to clear'
alias adb_lv='echo current PV is [ $PV ], change it by command of [ export PV=XX ]'
alias adb_ll='oci db autonomous-database list --profile $PV --output table --query "data [*].{C01_ID:id, C00_DbName:\"db-name\"}"'
alias adb_ls='oci db autonomous-database list --profile $PV --output table --query "data [*].{C00_InsName:\"display-name\", C01_DbName:\"db-name\", C02_OCPU:\"cpu-core-count\", C03_TB:\"data-storage-size-in-tbs\", C04_Verion:\"db-version\",C05_Type:\"db-workload\", C06_Status:\"lifecycle-state\", C07_CreateTime:\"time-created\"}"'
alias adb_al='cat ~/cloud_stuff/adb_cmd_list.sh | grep "##"'
alias adb_cc='unalias adb_hh;unalias adb_lv;unalias adb_ll;unalias adb_ls;unalias adb_cc;unalias adb_al'
echo '************* oci commands for adb ************'
echo 'Please use adb_hh to get help of fast commands'
echo 'Please use adb_al to show all'
adb_lv
echo '***********************************************'
