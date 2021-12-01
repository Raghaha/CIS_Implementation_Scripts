  # Ensure no legacy &quot;+&quot; entries exist in /etc/group 
  echo 
  echo \*\*\*\* Ensure\ no\ legacy\ \&quot\;\+\&quot\;\ entries\ exist\ in\ /etc/group 
  sed -ri '/^\+:.*$/ d' /etc/group 