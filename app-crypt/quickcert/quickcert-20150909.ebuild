EAPI=5
inherit git-2
inherit user

DESCRIPTION="A tool to create CA, keys and certs for development and deployemnt."
HOMEPAGE="https://github.com/andmarios/quickcert"
SRC_URI=""

EGIT_REPO_URI="https://github.com/andmarios/quickcert"
EGIT_COMMIT="b8cf9748c5667b6f991730321b25bab05e279fbf"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND="dev-lang/go"

_DEST=${WORKDIR}/src/github.com/andmarios

src_compile() {
	ebegin "Building quickcert ${EGIT_COMMIT}"
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
