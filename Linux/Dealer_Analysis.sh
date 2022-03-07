#!/bin/bash 

 awk -F' ' '{print $1" "$2" "$5" "$6}' 03$1_Dealer_schedule  |grep -- "$2:00:00 $3"  >>  Dealers_working_during_losses

