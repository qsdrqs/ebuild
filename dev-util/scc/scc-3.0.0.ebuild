EAPI=7

DESCRIPTION="Sloc Cloc and Code (scc)"
HOMEPAGE="https://github.com/boyter/scc"
SRC_URI=https://github.com/boyter/scc/archive/refs/tags/v${PV}.zip

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm64 x86"
DEPEND="dev-lang/go"
RDEPEND="${DEPEND}"

src_compile() {
	go build || die
}

src_install() {
	dobin ${PN}
}
