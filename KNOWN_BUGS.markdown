KNOWN BUGS in xen-tools
=======================

Bugs to fix before a 4.3 release
--------------------------------

* `xen-delete-image` doesn't remove all logical volumes if `--partitions` is used.

   See the link below for details how to reproduce. Reproducable at
   least with `--lvm`. Thanks to Antoine Benkemoun for reporting.

   [Bug Report](http://xen-tools.org/pipermail/xen-tools-discuss/2010-May/000757.html)

* `xen-delete-image` ignores extension setting

* partitions were mounted in config file order, not in mountpoint order.
  That implies that if you specified :

    /boot
    /

  in that order, `/` was mounted _over_ `/boot`, and you would not
  _see_ `/boot`.  Xen-Tools would then install `boot` on your `/`
  partition, and your boot device was just empty and unbootable.

  Workaround for 4.2 is to write your partition file such as mounts overlap
  correctly when mounted in specified order.

  Current (unreleased) fix is to sort by mountpoint length.

  Fix would be to reproduce what mount does with mount `-a`.

* `xen-create-image` doesn't unmount the `tempdir` properly if `/proc`
  wasn't mounted inside

* `xen-create-image` says on startup summary that the Debian mirror is
  used even if Ubuntu is going to be installed (and works)

* `xen-list-images` does not honour `--extension`

* `--extension=''` (i.e. empty string) no more works


Bugs to fix later
-----------------

`t/xen-tools.t` can't really test Xen::Tools as the latter requires a
local Xen installation. For proper testing, a dummy set of Xen
configuration files and configurable paths to them in `Xen::Tools`
would be necessary.