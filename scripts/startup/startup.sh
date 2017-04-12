#!/bin/bash
#startup script restores i3 layouts

#Restore layouts
i3-msg "workspace 1; append_layout /home/juri/scripts/startup/workspaces/workspace-1.json"
#skype
google-chrome-stable --app-id=oonccmmafcaodljbcgobdbknmbljiafh &
#outlook
google-chrome-stable --app-id=pilpdigajflongmcjbpfocacibaedafe &
#whatsapp
google-chrome-stable --app-id=hnpfjngllnobngcgfapefoaidbinmjnm &
#gmail
google-chrome-stable --app-id=kmhopmchchfpfdcdjodmpfaaphdclmlj &
sleep 5

i3-msg "workspace 2; append_layout /home/juri/scripts/startup/workspaces/workspace-2.json"
#remmina
remmina &
sleep5

i3-msg "workspace 3; append_layout /home/juri/scripts/startup/workspaces/workspace-3.json"
google-chrome-stable &
sleep5

i3-msg "workspace F1; append_layout /home/juri/scripts/startup/workspaces/workspace-F1.json"
#music
google-chrome-stable --app-id=foaiibmpemkddjcgfichgajbfoajgpda &
#terminal (cava)
xfce4-terminal -e cava &
sleep 5

i3-msg "workspace F2; append_layout /home/juri/scripts/startup/workspaces/workspace-F2.json"
#evernote
google-chrome-stable --app-id=nkjgiaccncgbfnfhfhhnpbncimnnnmhn &
#toggl
google-chrome-stable --app-id=emhlbipdbnglohkhcmimglnngjlfoehc &


#######posterity
#Open apps to be swallowed
#toggl
#google-chrome-stable --app-id=emhlbipdbnglohkhcmimglnngjlfoehc &
#music
#google-chrome-stable --app-id=foaiibmpemkddjcgfichgajbfoajgpda &
#whatsapp
#google-chrome-stable --app-id=hnpfjngllnobngcgfapefoaidbinmjnm &
#gmail
#google-chrome-stable --app-id=kmhopmchchfpfdcdjodmpfaaphdclmlj &
#evernote
#google-chrome-stable --app-id=nkjgiaccncgbfnfhfhhnpbncimnnnmhn &
#skype
#google-chrome-stable --app-id=oonccmmafcaodljbcgobdbknmbljiafh &
#outlook
#google-chrome-stable --app-id=pilpdigajflongmcjbpfocacibaedafe &

#terminal (cava)
#xfce4-terminal -e cava &
#remmina
#remmina &
#virtualbox
#virtualbox &

#Rearrange
#What if only one monitor?
