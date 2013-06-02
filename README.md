
## net-print/canon-mx520-1.00

This is the binary (deb) driver amd64 from Canon for Canon MX520 series machines, like the Canon MX525.
I unpacked it, made any necessary adjustments (added symlinks, changed paths to gentoo paths) and repacked it.

Obviously it still remains Canon's intellectual property. I just repacked it for Gentoo.

It is a workardound, until I can get a working ebuild for cnijfilter-drivers-3.90.

## media-gfx/scangearmp-2.10

This is an adapted ebuild for scangearmp-2.10 (source code version). It supports MX390, MX450, MX520, MX720, MX920, E610 series machines.
You can scan using Canon's software through usb, ethernet or wifi connection. Unfortunately you can not scan with SANE frontends, but Canon's software is adequate for the time being.

I tested it only on amd64.
