IF NOT EXIST ".env" rename .env.example .env

IF NOT EXIST "puphpet\config.yaml" rename puphpet\config.yaml.example config.yaml
   
IF EXIST "public_html\wp\wp-content" del "public_html\wp\wp-content" /y

IF EXIST "public_html\wp\wp-config-sample.php" del "public_html\wp\wp-config-sample.php" /y

IF EXIST "public_html\wp\.htaccess" del "public_html\wp\.htaccess" /y

echo "Installing Node Dependencies"
  msiexec /i node-v0.12.7-x64.msi

cd "C:\Program Files\nodejs"

echo "Installing Bower Dependencies"
  npm install -g bower

echo "Installing Grunt Dependencies"
  npm install -g grunt-cli
