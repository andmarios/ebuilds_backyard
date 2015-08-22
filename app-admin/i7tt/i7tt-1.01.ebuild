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

	ln -s ${WORKDIR}/i7tt-${PV} ${_DEST}/i7tt
	export GOPATH=${WORKDIR}
	cd ${_DEST}/i7tt
	go get -v ./... && go build -v i7tt.go
	eend ${?}
}

src_install() {
	ebegin "Installing syncthing"
	dobin ${_DEST}/i7tt/i7tt
	eend ${?}
}
