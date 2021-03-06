# Status: Needs a working resolv.h.
#         Perhaps add libres?
#         http://dan.drown.org/android/src/libres/
TERMUX_PKG_HOMEPAGE=https://github.com/traviscross/mtr
TERMUX_PKG_DESCRIPTION="Network diagnostic tool"
TERMUX_PKG_VERSION=0.87
TERMUX_PKG_SRCURL=https://github.com/traviscross/mtr/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_FOLDERNAME=mtr-$TERMUX_PKG_VERSION
TERMUX_PKG_DEPENDS="ncurses"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--without-gtk --disable-ipv6"

termux_step_pre_configure() {
	cd $TERMUX_PKG_SRCDIR
	./bootstrap.sh
}
