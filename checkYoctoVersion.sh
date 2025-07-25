for i in {1,2,3,4,5,6,7,8,9,10,11,12}; do
        ssh root@172.16.50.$i "cat /etc/os-release"
done

