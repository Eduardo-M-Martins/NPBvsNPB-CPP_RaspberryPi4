export f1=4
f2=10
f3=8
su="SUCCESSFUL"
prog=("EP" "MG" "CG" "FT" "IS" "BT" "SP" "LU")
arq=("ep" "mg" "cg" "ft" "is" "bt" "sp" "lu")

cd ../../NPB/NPB-OMP-CPP
for ((i=0; i<$f3; i++));do
    make "${prog[$i]}" "CLASS=B" > del
    rm del  
done

cd bin
for ((i=$f1; i>=1; i--));do
    export OMP_NUM_THREADS=$i
    for ((j=0; j<$f2; j++));do
        for ((k=0; k<$f3; k++));do 
            ./"${arq[$k]}".B > ../aux1.txt
            grep "Verification    =" ../aux1.txt | awk '{print $3}' > ../aux2.txt

            while read linha;do
                status=$linha
            done < ../aux2.txt
            
            if [ "$status" = "$su" ];then
                grep "" < ../aux1.txt >> ../../../NPB-IOT/IOT-EXE-B/Logs-CPP-B-R4/out-"${prog[$k]}"-"$i".txt
            else
                k=$(($k-1))
            fi
        done
    done
done

rm ../aux2.txt
rm ../aux1.txt
cd ../../../NPB-IOT/IOT-SCRIPTS

cd ../../NPB/NPB-OMP-CPP
for ((i=0; i<$f3; i++));do
    make "${prog[$i]}" "CLASS=C" > del
    rm del  
done

cd bin
for ((i=$f1; i>=1; i--));do
    export OMP_NUM_THREADS=$i
    for ((j=0; j<$f2; j++));do
        for ((k=0; k<$f3; k++));do 
            ./"${arq[$k]}".C > ../aux1.txt
            grep "Verification    =" ../aux1.txt | awk '{print $3}' > ../aux2.txt

            while read linha;do
                status=$linha
            done < ../aux2.txt
            
            if [ "$status" = "$su" ];then
                grep "" < ../aux1.txt >> ../../../NPB-IOT/IOT-EXE-C/Logs-CPP-C-R4/out-"${prog[$k]}"-"$i".txt
            else
                k=$(($k-1))
            fi
        done
    done
done

rm ../aux2.txt
rm ../aux1.txt
cd ../../../NPB-IOT/IOT-SCRIPTS