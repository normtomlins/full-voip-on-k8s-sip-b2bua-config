PUB_IP=$(curl ipconfig.org)
sed -i.original 's/{{ PUBLIC_IP }}/'$PUB_IP'/g' /etc/freeswitch/sip_profiles/external.xml
/usr/bin/freeswitch -u freeswitch -g freeswitch -c
