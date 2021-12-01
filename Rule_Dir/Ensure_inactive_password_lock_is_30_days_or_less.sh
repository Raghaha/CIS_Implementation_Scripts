  # Ensure inactive password lock is 30 days or less 
  echo 
  echo \*\*\*\* Ensure\ inactive\ password\ lock\ is\ 30\ days\ or\ less 
  useradd -D -f 30 
  getent passwd | cut -f1 -d ":" | xargs -n1 chage --inactive 30 
