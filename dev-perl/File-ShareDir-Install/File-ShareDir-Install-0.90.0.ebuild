# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=GWYN
MODULE_VERSION=0.09

inherit perl-module

DESCRIPTION="Install shared files"

SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~ppc ~x86"
IUSE=""

RDEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.110.0
	virtual/perl-File-Spec
	virtual/perl-IO
"
DEPEND="${RDEPEND}"

SRC_TEST="do"