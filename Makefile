# XML2RFC=/Users/paul/Documents/xml2rfc-1.35/xml2rfc.tcl
XML2RFC=xml2rfc

DATE=`date +%s`

all: core 

contribs: 
	$(XML2RFC) draft-pretend-contribs.xml draft-pretend-contribs-00.txt

core: 
	$(XML2RFC) draft-ietf-lpwan-overview.xml draft-ietf-lpwan-overview.txt

upload:
	scp draft-ietf-lpwan-overview.txt  down.dsg.cs.tcd.ie:/var/www/misc/draft-ietf-lpwan-overview.txt
	scp draft-ietf-lpwan-overview.xml  down.dsg.cs.tcd.ie:/var/www/misc/draft-ietf-lpwan-overview.xml

backuup:
	- mkdir backups
	cp draft-ietf-lpwan-overview.txt backups/draft-ietf-lpwan-overview-$(DATE).txt
	cp draft-ietf-lpwan-overview.xml backups/draft-ietf-lpwan-overview-$(DATE).xml

clean:
	rm -f   draft-ietf-lpwan-overview-00.txt *~

