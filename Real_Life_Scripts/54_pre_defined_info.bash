#!/bin/bash

# Description: This Sript creates a template script in the user dir
# Author: Sebastian Jardi
# Date: 15/09/2023

read -r -p "Enter name of script: " script
read -r -p "Whats your fullname: " fname
read -r -p "Whats the description of this script: " description
echo "#!/bin/bash" > ~/${script}
echo
echo "###########################################" >>
#~/ps/${script}
echo
echo "#Author: " $fname >> ~/${script}
echo
echo "#Date: " $(date) >> ~/${script}
echo
echo "#Description: " $description >> ~/${script}
echo
echo "#Modified: " $(date) >> ~/${script}
echo
echo "###########################################" >>
#~/ps/${script}
echo
chmod a+x ${script}
vim ${script}
