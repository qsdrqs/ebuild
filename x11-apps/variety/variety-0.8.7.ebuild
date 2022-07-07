EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..11} )

DESCRIPTION="Variety is a wallpaper manager for Linux systems."
HOMEPAGE="https://github.com/varietywalls/variety"
SRC_URI="https://github.com/varietywalls/variety/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
inherit distutils-r1

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64"

IUSE="X +httplib2 +imagemagick feh"

DEPEND="
	x11-libs/gtk+
	dev-python/beautifulsoup4
	dev-python/lxml
	dev-python/pycairo
	dev-python/pygobject
	dev-python/configobj
	dev-python/pillow
	dev-python/requests
	dev-python/dbus-python
	media-libs/gexiv2
	x11-libs/libnotify
	httplib2? ( dev-python/httplib2 )
	imagemagick? ( media-gfx/imagemagick )
	feh? ( media-gfx/feh )
"
RDEPEND="${DEPEND}"

BDEPEND="${DEPEND} dev-python/python-distutils-extra"

src_install() {
	python setup.py install --prefix ${D}/usr

	insinto ${PORTAGE_PYTHONPATH}/variety_lib
	doins ${FILESDIR}/variety_build_settings.py
}
