#!/bin/bash
# The code below is from the welcome script that runs when this scipt is executed
echo -e " \n"
echo "DDDDDDDDDDDDD        XXXXXXX       XXXXXXX    SSSSSSSSSSSSSSS "
echo "D::::::::::::DDD     X:::::X       X:::::X  SS:::::::::::::::S"
echo "D:::::::::::::::DD   X:::::X       X:::::X S:::::SSSSSS::::::S"
echo "DDD:::::DDDDD:::::D  X::::::X     X::::::X S:::::S     SSSSSSS"
echo "  D:::::D    D:::::DX XX:::::X   X:::::XXX S:::::S            "
echo "  D:::::D     D:::::D   X:::::X X:::::X    S:::::S            "
echo "  D:::::D     D:::::D    X:::::X:::::X      S::::SSSS         "
echo "  D:::::D     D:::::D     X:::::::::X        SS::::::SSSSS    "
echo "  D:::::D     D:::::D     X:::::::::X          SSS::::::::SS  "
echo "  D:::::D     D:::::D    X:::::X:::::X            SSSSSS::::S "
echo "  D:::::D     D:::::D   X:::::X X:::::X                S:::::S"
echo "  D:::::D    D:::::DX XX:::::X   X:::::XXX             S:::::S"
echo "DDD:::::DDDDD:::::D  X::::::X     X::::::X SSSSSSS     S:::::S"
echo "D:::::::::::::::DD   X:::::X       X:::::X S::::::SSSSSS:::::S"
echo "D::::::::::::DDD     X:::::X       X:::::X S:::::::::::::::SS "
echo "DDDDDDDDDDDDD        XXXXXXX       XXXXXXX  SSSSSSSSSSSSSSS   "
echo "                                                              "
echo "                         WELCOME HOME!                        "
echo "                   THIS IS $USER'S COMPUTER.                  "
echo "DATE: "
date +"%A, %B %d, %Y %H:%M:%S"
echo " "
echo -e " -x-x-x-x-x-x-x-x-x-x-\n"
echo -e "Calender:\n"
ncal -3
echo " "
cd /Users/sharma/Desktop
echo "Current Directory: $(pwd) "
ls -1 -F
# welome.sh script ends.


osascript <<EOF
tell application "Terminal"
    activate
    delay 1 # Wait for Terminal to activate
    do script "/bin/bash ~/welcome.sh" # Run the welcome.sh script
    delay 1 # Wait for the welcome.sh script to execute
    
    set screenWidth to 2560 # Replace this with your screen width
    set screenHeight to 1600 # Replace this with your screen height
    
    set the bounds of the first window to {0, 0, screenWidth, screenHeight} # Set window bounds based on screen resolution
end tell
EOF
