# XML2RFC=/Users/paul/Documents/xml2rfc-1.35/xml2rfc.tcl
XML2RFC=xml2rfc

DATE=`date +%s`

all: core upload

contribs: 
	$(XML2RFC) draft-pretend-contribs.xml draft-pretend-contribs-00.txt

core: 
	$(XML2RFC) draft-farrell-lpwan-overview.xml draft-farrell-lpwan-overview-00.txt

upload:
	scp draft-farrell-lpwan-overview.txt  down.dsg.cs.tcd.ie:/var/www/misc/draft-farrell-lpwan-overview.txt
	scp draft-farrell-lpwan-overview.xml  down.dsg.cs.tcd.ie:/var/www/misc/draft-farrell-lpwan-overview.xml

backuup:
	- mkdir backups
	cp draft-farrell-lpwan-overview.txt backups/draft-farrell-lpwan-overview-$(DATE).txt
	cp draft-farrell-lpwan-overview.xml backups/draft-farrell-lpwan-overview-$(DATE).xml

clean:
	rm -f   draft-farrell-lpwan-overview-00.txt *~

