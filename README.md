# CIS_Implementation_Scripts
This repository will help you to enforce CIS Security Benchmark

Currently, we have the scripts for RedHat Enterprose linux 7 implementation that complies with CI RedHat Enterprise Linux 7 benchmark v2.1.0 "Level 1 - Server"

To run the scripts directly, please place the scripts in the server and run the below command



### Default run (Enforce all Benchmark Rules):

#sh CIS_Red_Hat_Enterprise_Linux_7_v2_1_0_Remediation_Kit.sh




### Custom Run (Run selected rules)
1. Open rule_switch.conf in one of your favourite text editor (Contains the list of each individual scripts that are used for enforcing the hardening rules)
2. "=TURNON" from any of the line that you do not want to execute.

### How do I decide what rules I want and what I do not want?
1. The best suggestion is to have all the rules excepting only the ones that are critical for your business.

### How do I list out the scripts to be excluded from the run / How do I decide what scripts or rules to be run?
Below is the simple approach you can follow
1. Write down the purpose of the server (for your reference)
2. Write down the list of filesystems your server requires for operating (For rule 1 to 7 in rule_switch.conf)
3. Write down the list of the cases where you add / mount new devices (Suggest not to mount on /tmp or /var/tmp or /home or /dev/shm. If you still want to go ahead for specific reasons, this list helps for rules 8 to 19) 
