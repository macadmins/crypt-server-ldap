FROM macadmins/crypt-server
MAINTAINER Graham Gilbert <graham@grahamgilbert.com>

ENV CRYPT_LDAP_SERVER_URI='ldap://ldap' CRYPT_LDAP_START_TLS=false \
CRYPT_LDAP_USER_ATTR="sAMAccountName" \
CRYPT_LDAP_LOGGING=false
RUN apt-get update && apt-get install -y python-setuptools python-dev  libffi-dev libssl-dev libldap2-dev libsasl2-dev \
&& easy_install pip && pip install requests pyOpenSSL ndg-httpsclient pyasn1 django-auth-ldap
ADD settings.py /home/docker/crypt/settings.py
