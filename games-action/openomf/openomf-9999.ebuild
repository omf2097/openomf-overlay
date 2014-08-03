# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-libs/dumb/dumb-0.9.3-r3.ebuild,v 1.8 2014/03/30 10:36:11 nimiux Exp $

EAPI=5
inherit git-2 cmake-utils

DESCRIPTION="OpenOMF"
HOMEPAGE="https://github.com/omf2097/openomf"
SRC_URI=""
EGIT_REPO_URI="https://github.com/omf2097/openomf.git"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+png vorbis"

RDEPEND="media-libs/dumb
         media-libs/openal
         >=media-libs/libsdl2-2.0.1
         games-misc/libshadowdive
         dev-libs/confuse
         net-libs/enet
         png? ( media-libs/libpng )
         vorbis? ( media-libs/libogg media-libs/libvorbis )"
DEPEND="${RDEPEND}"

CMAKE_BUILD_TYPE="Release"
CMAKE_VERBOSE=OFF

src_configure() {
	local mycmakeargs=(
        "-DUSE_SUBMODULES=OFF"
        $(cmake-utils_use png USE_PNG)
        $(cmake-utils_use vorbis USE_OGGVORBIS)
    )
	cmake-utils_src_configure
}
