# this script is meant to run CI on a static preview server
# it requires additional setup through Jenkins & GitHub
echo "moving to the right directory..."
cd "$(dirname "$0")"
echo "finding node/npm..."
export NVM_DIR="/root/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
echo "working path is: " $PATH
echo "pulling source code..."
git pull
echo "installing new packages"
npm install
echo "restarting the server"
forever restart server.js
echo "your new code is now acive!"

echo "the deployment has completed."
