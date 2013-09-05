include /usr/local/share/luggage/luggage.make

TITLE=Install_Digicert_AssuredIDCodeSigningCA-1_Certificate
REVERSE_DOMAIN=com.fiksu
PAYLOAD=\
	pack-script-postflight\
	pack-add-certificate

pack-add-certificate:
	@sudo mkdir -p /private/tmp/
	@sudo ${CP} DigiCertAssuredIDCodeSigningCA-1.crt /private/tmp/
