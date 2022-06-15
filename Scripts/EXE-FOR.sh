export f1=4
f2=10
f3=8
su="SUCCESSFUL"
prog=("EP" "MG" "CG" "FT" "IS" "BT" "SP" "LU")
arq=("ep" "mg" "cg" "ft" "is" "bt" "sp" "lu")

for ((i=0; i<$f3; i++));do
    cd $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-FOR/"${prog[$i]}"
    make "${prog[$i]}" "CLASS=B" > del
    rm del  
done

for ((i=$f1; i>=1; i--));do
    export OMP_NUM_THREADS=$i
    for ((j=0; j<$f2; j++));do
        for ((k=0; k<$f3; k++));do 
            cd $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-FOR/bin
            ./"${arq[$k]}".B > $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-FOR/zLogs/aux1.txt
            grep "Verification    =" $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-FOR/zLogs/aux1.txt | awk '{print $3}' > $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-FOR/zLogs/aux2.txt

            while read linha;do
                status=$linha
            done < $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-FOR/zLogs/aux2.txt
            
            if [ "$status" = "$su" ];then
                grep "" < $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-FOR/zLogs/aux1.txt >> $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-FOR/zLogs/out-"${prog[$k]}"-"$i".txt
            else
                k=$(($k-1))
            fi
        done
    done
done

rm $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-FOR/zLogs/aux2.txt
rm $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-FOR/zLogs/aux1.txt