#!/bin/bash
#preinst
# reload - reload springboard
##

sw_vers -productVersion 

vers=$(sw_vers -productVersion)

echo "you are running $vers"
echo "Thank you for installing C0meBackF0lders for iOS $vers"
#echo ""
#echo ""
#echo ""
#echo ""
#echo ""
#echo ""
#echo ""
#echo ""
#echo ""
#echo ""
#echo ""
#echo ""
#echo ""
#echo ""
#echo ""
#echo ""
#echo ""
#echo ""
echo "Reloading Springboard..."
sbreload
echo "Done!"