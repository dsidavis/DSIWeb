#
# This can only be used within the python environment
# using bash
#   bash
#   source DSIWebSiteEnv/bin/activate
# Then
#   make 
#

ship: publish
	rsync -rv build anson:dsi-new

all:
	cd content; $(MAKE)

publish:
	invoke $@
