openomf-overlay
===============

This is an experimental Gentoo portage overlay for OpenOMF project. We take no responsibility
at all if this destroys something or melts your brain or causes any other damage.

Installation
------------

1. Clone the repo somewhere, eg. /usr/local/portage.
2. Add the location directory to PORTDIR_OVERLAY in make.conf. eg. PORTDIR_OVERLAY="/usr/local/portage".
3. emerge -av openomf
4. Install resources to /usr/local/share/openomf/ (this has to be done manually).
5. run "openomf".
