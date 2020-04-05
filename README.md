# Androwind
last Updated: Sun 05 Apr 2020 10:59:56 AM PKT

Click this thumbnail to watch the video about Androwind Installation and proper use!

   [<img src="https://img.youtube.com/vi/NZotZben31M/maxresdefault.jpg" width="80%">](https://youtu.be/NZotZben31M)

A powerfull auto backdoor generator in python coded by <a href="https://www.facebook.com/cybernetics.me" target="_blank">Umer Farid</a>.

Create a backdoor for windows and android devices.

Work over LAN and WAN with the help of ngrok

if any error occurred click here to contact us: 
<br> <a href="mailto:umerfarid53@gmail.com" target="_blank">Send mail</a>
<br><a href="https://www.facebook.com/cybernetics.me" target="_blank">Follow us on Facebook</a>

# Prerequisites
Windows + metasploit with updated python3 installed.

Linux + metasploit with updated python3 installed

# Download and Install Androwind

git clone https://github.com/MrRobot-hub/androwind.git

cd androwind

chmod +x install.sh

./install.sh

# Ngrok Port Forwarding

<h4> Very important and main step here! </h4>

You must have to create an account on ngrok to use this tool, the link is given below.

Signup: <a href="https://dashboard.ngrok.com/signup" target = "_blank">Ngrok Signup</a>

Once you signup, login to the account and get the token which will used to port forward for server and listener at the same time.

Login: <a href="https://dashboard.ngrok.com/login">Ngrok Login</a>

Just copy the authtoken and make small changes in ngrok.yml file before getting started with it.
Edit file ngrok.yml with your favourite editor. Here i use gedit (apt install gedit):

gedit /root/.androwind/ngrok.yml

Replace your authtoken there and now you're ready to go. 

# Run Androwind

Run the tool by typing a command over the terminal.

androwind
# Uninstall Androwind

chmod +x uninstall.sh

./uninstall.sh
