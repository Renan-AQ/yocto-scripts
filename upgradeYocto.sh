for i in {1,2,3,4,5,6,7,8,9,10,11,12}; do 
        scp /root/v7.0.12.raucb root@172.16.50.$i:~/ 
        ssh root@172.16.50.$i "rauc install v7.0.12.raucb" 
        ssh root@172.16.50.$i "reboot '0 tryboot'"; 
done 
