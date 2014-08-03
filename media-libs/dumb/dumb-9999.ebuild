# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-libs/dumb/dumb-0.9.3-r3.ebuild,v 1.8 2014/03/30 10:36:11 nimiux Exp $

EAPI=5
inherit git-2 cmake-utils

DESCRIPTION="Module music player library"
HOMEPAGE="http://dumb.sourceforge.net/"
SRC_URI=""
EGIT_REPO_URI="https://bitbucket.org/kode54/dumb.git"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND=""

CMAKE_USE_DIR=${S}/dumb/cmake
CMAKE_BUILD_TYPE="Release"
CMAKE_VERBOSE=OFF

src_configure() {
	local mycmakeargs=(
        "-DBUILD_SHARED_LIBS:BOOL=ON"
    )
	cmake-utils_src_configure
}