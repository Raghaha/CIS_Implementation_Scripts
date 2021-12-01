  # Ensure no legacy &quot;+&quot; entries exist in /etc/passwd 
  echo 
  echo \*\*\*\* Ensure\ no\ legacy\ \&quot\;\+\&quot\;\ entries\ exist\ in\ /etc/passwd 
  sed -ri '/^\+:.*$/ d' /etc/passwd 