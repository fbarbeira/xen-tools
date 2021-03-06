xen-tools 4.3.1 (released 30-Jun-2012)
======================================

Bugfix Release only


xen-tools 4.3 (released 26-Jun-2012)
====================================

Bug Fixes
---------

* Fix several testuite failures depending on the build host's
  installation.

Other Changes
-------------

* Remove most Mercurial traces


xen-tools 4.3rc1 (released 08 Jun 2012)
=======================================

New Features and Major Changes
------------------------------

* Massive code deduplication in hooks directory

New Options
-----------

    --dontformat (xen-create-image)
    --finalrole  (xen-create-image)
    --apt_proxy  (xen-create-image)

Newly Supported Distribution Releases
-------------------------------------

* Ubuntu 11.10 Oneiric
* Ubuntu 12.04 Precise
* Ubuntu 12.10 Quantal
* CentOS 6


xen-tools 4.2.1 (released 17 Mar 2011)
======================================

Bugfix Release only


xen-tools 4.2 (released 05 Oct 2010)
====================================

First final release of the new Xen-Tools Team.

Supports Ubuntu up to 11.04 (Natty) and Debian up to 7.0 (Wheezy).


New Options
-----------

    --debootstrap-cmd (xen-create-image and xt-install-image)

New Features and Major Changes
------------------------------

* Uses hvc0 and xvda devices by default
* Also supports cdebootstrap
* Preliminary btrfs support.
* Uses GeoIP for Debian mirrors: Default Debian mirror is now
  cdn.debian.net, see http://wiki.debian.org/DebianGeoMirror for
  details.
* New helper program xt-guess-suite-and-mirror, used to find the
  default mirror and suite.
