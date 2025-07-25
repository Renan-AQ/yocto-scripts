for i in {21,207}; do
      scp /root/v7.0.10.raucb root@172.16.50.$i:~/
      ssh root@172.16.50.$i "rauc install v7.0.10.raucb"
      ssh root@172.16.50.$i "rm -rf /anzen/upgrade_history/v7.0.12; mkdir -p /anzen/upgrade_history/v7.0.10" 
      ssh root@172.16.50.$i "sed -i -E 's/3/4/' /autoboot/autoboot.txt; sed -i -E 's/2/3/' /autoboot/autoboot.txt; sed -i -E 's/4/2/' /autoboot/autoboot.txt; reboot"
done

