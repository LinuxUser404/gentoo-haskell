# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3.9999

CABAL_FEATURES=""
inherit elisp-common haskell-cabal

DESCRIPTION="Structured editing Emacs mode for Haskell"
HOMEPAGE="https://github.com/chrisdone/structured-haskell-mode"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="emacs"

RDEPEND=">=dev-haskell/descriptive-0.7:= <dev-haskell/descriptive-0.10:=
	>=dev-haskell/haskell-src-exts-1.18:=
	dev-haskell/text:=
	>=dev-lang/ghc-7.4.1:=
	emacs? ( virtual/emacs app-emacs/hindent )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
SITEFILE="50${PN}-gentoo.el"

src_compile() {
	haskell-cabal_src_compile
	if use emacs; then
		pushd elisp
		elisp-compile *.el || die
		popd
	fi
}

src_install() {
	haskell-cabal_src_install
	if use emacs; then
		elisp-install "${PN}" elisp/*.{el,elc}
		elisp-site-file-install "${FILESDIR}/${SITEFILE}"
	fi
}

pkg_postinst() {
	haskell-cabal_pkg_postinst
	if use emacs; then
		elisp-site-regen
	fi
}

pkg_postrm() {
	haskell-cabal_pkg_postrm
	if use emacs; then
		elisp-site-regen
	fi
}
