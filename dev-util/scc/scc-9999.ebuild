EAPI=7

DESCRIPTION="Sloc Cloc and Code (scc)"
HOMEPAGE="https://github.com/boyter/scc"
EGIT_REPO_URI="https://github.com/boyter/scc.git"
inherit git-r3

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-lang/go"
RDEPEND="${DEPEND}"

src_compile() {
	go build || die
}

src_install() {
	dobin ${PN}
}
