include /usr/local/share/luggage/luggage.make

TITLE=Install_Digicert_AssuredIDCodeSigningCA-1_Certificate
REVERSE_DOMAIN=com.fiksu
PACKAGE_VERSION=1.0.0
PAYLOAD=\
	pack-script-postflight\
	pack-add-certificate
#Downlods the newest version of the intermediary cert, then moves it to the /tmp folder for the postflight.
pack-add-certificate:
	curl -LOk https://www.digicert.com/CACerts/DigiCertAssuredIDCodeSigningCA-1.crt
	@sudo mkdir -p ${WORK_D}/private/tmp/
	@sudo ${CP} ./DigiCertAssuredIDCodeSigningCA-1.crt ${WORK_D}/private/tmp/
