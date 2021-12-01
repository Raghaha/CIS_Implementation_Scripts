  # Ensure NFS and RPC are not enabled 
  echo 
  echo \*\*\*\* Ensure\ NFS\ and\ RPC\ are\ not\ enabled 
  systemctl disable nfs.service 
  systemctl disable rpcbind.service 
