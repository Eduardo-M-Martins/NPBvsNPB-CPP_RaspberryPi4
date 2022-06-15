prog=("EP" "MG" "CG" "FT" "IS" "BT" "SP" "LU")
export f1=4
f3=8
cont=0
vet=()

for ((i=0; i<$f3; i++));do
    for ((j=1; j<=$f1; j++));do
        grep "Time in seconds =" $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-FOR/zLogs/out-"${prog[$i]}"-"$j".txt | awk '{print $5}' >> $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-FOR/zLogs/time-"${prog[$i]}"-"$j".txt
        while read linha;do
            vet[$cont]=$linha
            cont=$(($cont+1))
        done < $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-FOR/zLogs/time-"${prog[$i]}"-"$j".txt
        cont=0
        rm $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-FOR/zLogs/time-"${prog[$i]}"-"$j".txt
        python3 PRINT.py ${vet[@]} $j >> $HOME/Repositorios/npb-iot/NPB-IOT/zLogs/zFOR-"${prog[$i]}".txt

        grep "Time in seconds =" $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-CPP/zLogs/out-"${prog[$i]}"-"$j".txt | awk '{print $5}' >> $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-CPP/zLogs/time-"${prog[$i]}"-"$j".txt
        while read linha;do
            vet[$cont]=$linha
            cont=$(($cont+1))
        done < $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-CPP/zLogs/time-"${prog[$i]}"-"$j".txt
        cont=0
        rm $HOME/Repositorios/npb-iot/NPB-IOT/NPB-OMP-CPP/zLogs/time-"${prog[$i]}"-"$j".txt
        python3 PRINT.py ${vet[@]} $j >> $HOME/Repositorios/npb-iot/NPB-IOT/zLogs/zCPP-"${prog[$i]}".txt
    done
done