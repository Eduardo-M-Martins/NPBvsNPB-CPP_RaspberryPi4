prog=("EP" "MG" "CG" "FT" "IS" "BT" "SP" "LU")
export f1=4
f3=8
cont=0
vet=()

for ((i=0; i<$f3; i++));do
    for ((j=1; j<=$f1; j++));do
        grep "Time in seconds =" ../IOT-EXE-B/Logs-FOR-B-R4/out-"${prog[$i]}"-"$j".txt | awk '{print $5}' >> aux1-"${prog[$i]}"-"$j".txt
        while read linha;do
            vet[$cont]=$linha
            cont=$(($cont+1))
        done < aux1-"${prog[$i]}"-"$j".txt
        cont=0
        rm aux1-"${prog[$i]}"-"$j".txt
        python3 lines.py ${vet[@]} $j >> ../IOT-EXE-B/Logs-Graph-Lines/zFOR-"${prog[$i]}".txt

        grep "Time in seconds =" ../IOT-EXE-B/Logs-CPP-B-R4/out-"${prog[$i]}"-"$j".txt | awk '{print $5}' >> aux1-"${prog[$i]}"-"$j".txt
        while read linha;do
            vet[$cont]=$linha
            cont=$(($cont+1))
        done < aux1-"${prog[$i]}"-"$j".txt
        cont=0
        rm aux1-"${prog[$i]}"-"$j".txt
        python3 lines.py ${vet[@]} $j >> ../IOT-EXE-B/Logs-Graph-Lines/zCPP-"${prog[$i]}".txt

        grep "Time in seconds =" ../IOT-EXE-C/Logs-FOR-C-R4/out-"${prog[$i]}"-"$j".txt | awk '{print $5}' >> aux1-"${prog[$i]}"-"$j".txt
        while read linha;do
            vet[$cont]=$linha
            cont=$(($cont+1))
        done < aux1-"${prog[$i]}"-"$j".txt
        cont=0
        rm aux1-"${prog[$i]}"-"$j".txt
        python3 lines.py ${vet[@]} $j >> ../IOT-EXE-C/Logs-Graph-Lines/zFOR-"${prog[$i]}".txt

        grep "Time in seconds =" ../IOT-EXE-C/Logs-CPP-C-R4/out-"${prog[$i]}"-"$j".txt | awk '{print $5}' >> aux1-"${prog[$i]}"-"$j".txt
        while read linha;do
            vet[$cont]=$linha
            cont=$(($cont+1))
        done < aux1-"${prog[$i]}"-"$j".txt
        cont=0
        rm aux1-"${prog[$i]}"-"$j".txt
        python3 lines.py ${vet[@]} $j >> ../IOT-EXE-C/Logs-Graph-Lines/zCPP-"${prog[$i]}".txt
    done
done