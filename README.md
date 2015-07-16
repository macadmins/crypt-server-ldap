# Crypt-Server-LDAP

This image comprises of a Crypt Server is able to use LDAP authentication. There are many, many things that may need to be changed for your environment - this image works with my AD environment. As such, you may need to override ``settings.py`` completely. This image uses [django-auth-ldap](https://pythonhosted.org/django-auth-ldap/index.html_) to connect to LDAP, so please refer to the documentation there if you need a more custom configuration.

## Usage

This image extends (macadmins/sal)[https://registry.hub.docker.com/u/macadmins/sal/]. For full usage instructions for that image, see it's repository.

## Environment variables

* ``CRYPT_LDAP_SERVER_URI``: The URI of your LDAP server. Defaults to ``ldap://ldap``
* ``CRYPT_LDAP_BIND_DN``: The distinguished name of your bind account.
* ``CRYPT_LDAP_BIND_PASSWORD``: The password for your bind account.
* ``CRYPT_LDAP_USER_SEARCH``: The search path for users.
* ``CRYPT_LDAP_GROUP_SEARCH``: The search path for groups.
* ``CRYPT_LDAP_REQUIRE_GROUP``: A group object to restrict login to.
* ``CRYPT_LDAP_START_TLS``: Set to ``true`` to use TLS. Defaults to ``false``
* ``CRYPT_LDAP_USER_ATTR``: The ldap attribute to identify the user. Defaults to ``sAMAccountName`` - NOT WORKING, MUST EDIT ``SETTINGS.PY`` TO MAKE THIS CHANGE CURRENTLY
* ``CRYPT_LDAP_LOGGING``: Set to ``true`` to enable logging of requests for debugging. Defaults to ``false``.
