EAPI=5
inherit git-2
inherit user

DESCRIPTION="An Intel CPU terminal monitor"
HOMEPAGE="https://github.com/andmarios/i7tt"
SRC_URI=""

EGIT_REPO_URI="https://github.com/andmarios/i7tt"
EGIT_COMMIT="v${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND="dev-lang/go"

_DEST=${WORKDIR}/src/github.com/andmarios

src_compile() {
	ebegin "Building i7tt ${EGIT_COMMIT}"
	mkdir -p ${_DEST}

	ln -s ${WORKDIR}/${PN}-${PV} ${_DEST}/${PN}
	export GOPATH=${WORKDIR}
	cd ${_DEST}/${PN}
	go get -v ./... && go build -v
	eend ${?}
}

src_install() {
	ebegin "Installing ${PN}"
	dobin ${_DEST}/${PN}/${PN}
	eend ${?}
}
