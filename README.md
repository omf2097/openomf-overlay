OpenOMF Gentoo Overlay
======================

This is an experimental Gentoo portage overlay for OpenOMF project. We take no responsibility
at all if this destroys something or melts your brain or causes any other damage.

Installation
------------

1. Install layman (howto: http://wiki.gentoo.org/wiki/Layman)
2. Copy our overlay.xml from the overlay repository to a temporary directory ```wget https://raw.githubusercontent.com/omf2097/openomf-overlay/master/overlay.xml```
3. Rename the overlay.xml and copy it to /etc/layman/overlays. ```sudo mv overlay.xml /etc/layman/overlays/openomf.xml``` 
4. Install overlay using layman ```layman -a openomf```
5. Install openomf ```emerge -av openomf```
