#!/bin/bash
echo "Enter Ramesh basic salary"
read BASIC
DA=$(expr 0.52*"$BASIC"|bc)
HRA=$(expr 0.15*"$BASIC"|bc) 
PDA=$(expr "$DA"+"$BASIC"|bc) 
PF=$(expr 0.12*"$PDA"|bc) 
gross=$(expr "$BASIC"+"$DA"+"$HRA"+"$PDA"*0.12 | bc)
echo "The gross salary is=$gross"
Take=$(expr "$BASIC"+"$DA"+"$HRA"-"$PDA"*0.12 | bc)
echo "The gross salary is=$Take"
