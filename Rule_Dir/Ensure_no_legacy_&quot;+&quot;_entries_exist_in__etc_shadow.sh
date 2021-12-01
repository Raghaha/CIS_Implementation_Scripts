  # Ensure no legacy &quot;+&quot; entries exist in /etc/shadow 
  echo 
  echo \*\*\*\* Ensure\ no\ legacy\ \&quot\;\+\&quot\;\ entries\ exist\ in\ /etc/shadow 
  sed -ri '/^\+:.*$/ d' /etc/shadow 