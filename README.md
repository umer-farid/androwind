# Androwind
A powerfull auto backdoor generator in python.

Create a backdoor for windows and android devices.

Work over LAN and WAN with the help of ngrok

if any error occurred click here to contact us: 
<br> <a href="mailto:umerfarid53@gmail.com" target="_blank">Send mail</a>
<br><a href="https://www.facebook.com/cybernetics.me" target="_blank">Follow us on Facebook</a>

# Prerequisites

<h4> apt updated </h4>

<h4> Python3 updated </h4>

<h4> pip3 updated </h4>

# Download and Install Androwind

git clone https://github.com/MrRobot-hub/androwind.git

cd androwind

chmod +x install.sh

./install.sh

# Ngrok Port Forwarding

<h4> Very important and main step here! </h4>

You must have to create an account on ngrok to use this tool, the link is given below.

Signup: <a href="https://dashboard.ngrok.com/signup" target = "_blank">Ngrok Signup</a>

Once you signup, login to the account and get the token which will used to port forward server and listener at the same time.

Login: <a href="https://dashboard.ngrok.com/login">Ngrok Login</a>

Just copy the authtoken and make small changes in ngrok.yml file before getting started with it.

nano androwind/ngrok.yml

Replace your authtoken there and now you're ready to go. 

# Run Androwind

Run the tool by typing a command over the terminal.

androwind
