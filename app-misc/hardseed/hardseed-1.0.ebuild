# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
SLOT="0"
DESCRIPTION="hardseed is a batch seeds and pictures download utiltiy from CaoLiu and AiCheng forum"
HOMEPAGE="https://github.com/yangyangwithgnu/hardseed"
SRC_URI="https://github.com/yangyangwithgnu/hardseed/archive/master.zip"
S="${WORKDIR}/hardseed-master"
LICENSE="GPLv2"
KEYWORDS="~amd64 ~x86"

src_configure(){
	pushd build
	cmake .
	popd
}

src_compile(){
	pushd build
	emake
	popd
}

src_install(){
	pushd build
	emake DESTDIR="${D}" install
	popd
	dodoc README*
}
