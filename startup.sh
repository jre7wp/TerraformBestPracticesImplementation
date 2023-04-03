!# /bin/bash
apt update
apt install apache2
DD_API_KEY=7d772296553bfc305a5c047baea5b770 DD_SITE="datadoghq.com" bash -c "$(curl -L https://s3.amazonaws.com/dd-agent/scripts/install_script_agent7.sh)"
