##************* common commands list *************
##**
##
##oci compute instance action --action START --profile $PV --instance-id
##**
alias ins_hh='echo ins_lv shows current PV, ins_ll shows less, ins_ls shows more and ins_cc to clear'
alias ins_lv='echo current PV is [ $PV ], change it by command of [ export PV=XX ]'
alias ins_ll='oci compute instance list --profile $PV --output table --query "data [*].{C01_ID:id, C00_InsName:\"display-name\"}"'
alias ins_ls='oci compute instance list --profile $PV --output table --query "data [*].{C00_InsName:\"display-name\", C01_Shape:\"shape\", C02_Region:\"region\", C03_FD:\"fault-domain\", C04_OCPU:\"ocpus\",C05_RAM:\"memory-in-gbs\", C06_Status:\"lifecycle-state\", C07_CreateTime:\"time-created\"}"'
alias ins_al='cat ~/cloud_stuff/ins_cmd_list.sh | grep "##"'
alias ins_cc='unalias ins_hh;unalias ins_lv;unalias ins_ll;unalias ins_ls;unalias ins_cc;unalias ins_al;unalias ins_cmd;unalias ins_ip'
alias ins_cmd="echo -e 'oci compute instance action --action START --profile $PV --instance-id \noci compute instance action --action STOP --profile $PV --instance-id '"
alias ins_pip="echo -e $'export INS_OCID= \noci compute instance list-vnics  --profile $PV --instance-id $INS_OCID | jq -r \'.data[].\"public-ip\"\''"
echo '************* oci commands for adb ************'
echo 'Please use ins_hh to get help of fast commands'
echo 'Please use ins_al to show all'
ins_lv
echo '***********************************************'
