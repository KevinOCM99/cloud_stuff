##common commands list
##export PV=P3FF
##export PV=p3TO
##oci db autonomous-database create --profile $PV --db-name BJSCCADW0506 --cpu-core-count 1 --data-storage-size-in-tbs 1 --admin-password WelcomE__12345
##oci db autonomous-database list --profile $PV --output table --query "data [*].{C01_ID:id, C00_DbName:\"db-name\"}"
##oci db autonomous-database list --profile $PV --output table --query "data [*].{C00_InsName:\"display-name\", C01_DbName:\"db-name\", C02_OCPU:\"cpu-core-count\", C03_TB:\"data-storage-size-in-tbs\", C04_Verion:\"db-version\", C05_Status:\"lifecycle-state\", C06_CreateTime:\"time-created\"}"
##oci db autonomous-database get --profile $PV --autonomous-database-id 
##oci db autonomous-database generate-wallet --profile $PV --file /tmp/myWallet.zip --password Welcome_1 --autonomous-database-id 
##oci db autonomous-database delete --profile $PV --autonomous-database-id 
##oci db autonomous-database stop --profile $PV --autonomous-database-id 
##oci db autonomous-database start --profile $PV --autonomous-database-id 
alias adw_lv='echo current PV is [ $PV ], change it by command of [ export PV=O6AB ]'
alias adw_ll='oci db autonomous-database list --profile $PV --output table --query "data [*].{C01_ID:id, C00_DbName:\"db-name\"}"'
alias adw_ls='oci db autonomous-database list --profile $PV --output table --query "data [*].{C00_InsName:\"display-name\", C01_DbName:\"db-name\", C02_OCPU:\"cpu-core-count\", C03_TB:\"data-storage-size-in-tbs\", C04_Verion:\"db-version\",C05_Type:\"db-workload\", C06_Status:\"lifecycle-state\", C07_CreateTime:\"time-created\"}"'

