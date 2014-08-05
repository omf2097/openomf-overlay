# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit git-2 cmake-utils

DESCRIPTION="OMF2097 File format handling library"
HOMEPAGE="https://github.com/omf2097/libShadowDive"
SRC_URI=""
EGIT_REPO_URI="https://github.com/omf2097/libShadowDive.git"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
REQUIRED_USE=""

CMAKE_BUILD_TYPE="Release"
CMAKE_VERBOSE=OFF

src_configure() {
	local mycmakeargs=(
	"-DBUILD_SHARED_LIBS:BOOL=ON"
	)
	cmake-utils_src_configure
}
