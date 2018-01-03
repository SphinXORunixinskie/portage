# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

EGO_VENDOR=(
"cloud.google.com/go 3b1ae45394a234c385be014e9a488f2bb6eef821 github.com/GoogleCloudPlatform/gcloud-golang"
"github.com/Azure/go-autorest 58f6f26e200fa5dfb40c9cd1c83f3e2c860d779d"
"github.com/beorn7/perks 4c0e84591b9aa9e6dcfdf3e020114cd81f89d5f9"
"github.com/containernetworking/cni 137b4975ecab6e1f0c24c1e3c228a50a3cfba75e"
"github.com/coreos/etcd bb66589f8cf18960c7f3d56b1b83753caeed9c7a"
"github.com/davecgh/go-spew 782f4967f2dc4564575ca782fe2d04090b5faca8"
"github.com/dgrijalva/jwt-go 01aeca54ebda6e0fbfafd0a524d234159c05ec20"
"github.com/docopt/docopt-go 784ddc588536785e7299f7272f39101f7faccc3f"
"github.com/emicklei/go-restful 777bb3f19bcafe2575ffb2a3e46af92509ae9594"
"github.com/emicklei/go-restful-swagger12 dcef7f55730566d41eae5db10e7d6981829720f6"
"github.com/ghodss/yaml 0ca9ea5df5451ffdf184b4428c902747c2c11cd7"
"github.com/go-ini/ini 32e4c1e6bc4e7d0d8451aa6b75200d19e37a536a"
"github.com/go-openapi/jsonpointer 46af16f9f7b149af66e5d1bd010e3574dc06de98"
"github.com/go-openapi/jsonreference 13c6e3589ad90f49bd3e3bbe2c2cb3d7a4142272"
"github.com/go-openapi/spec 6aced65f8501fe1217321abf0749d354824ba2ff"
"github.com/go-openapi/swag 1d0bd113de87027671077d3c71eb3ac5d7dbba72"
"github.com/gogo/protobuf 342cbe0a04158f6dcb03ca0079991a51a4248c02"
"github.com/golang/glog 44145f04b68cf362d9c4df2182967c2275eaefed"
"github.com/golang/protobuf 4bd1920723d7b7c925de087aa32e2187708897f7"
"github.com/google/btree 7d79101e329e5a3adf994758c578dab82b90c017"
"github.com/google/gofuzz 44d81051d367757e1c7c6a5a86423ece9afcf63c"
"github.com/googleapis/gnostic 0c5108395e2debce0d731cf0287ddf7242066aba"
"github.com/gophercloud/gophercloud 2bf16b94fdd9b01557c4d076e567fe5cbbe5a961"
"github.com/gregjones/httpcache 787624de3eb7bd915c329cba748687a3b22666a6"
"github.com/gxed/eventfd 80a92cca79a8041496ccc9dd773fcb52a57ec6f9"
"github.com/gxed/GoEndian 0f5c6873267e5abf306ffcdfcfa4bf77517ef4a7"
"github.com/hashicorp/golang-lru a0d98a5f288019575c6d1f4bb1573fef2d1fcdc4"
"github.com/howeyc/gopass bf9dde6d0d2c004a008c27aaee91170c786f6db8"
"github.com/imdario/mergo 6633656539c1639d9d78127b7d47c622b5d7b6dc"
"github.com/ipfs/go-log 48d644b006ba26f1793bffc46396e981801078e3"
"github.com/jbenet/go-reuseport 7eed93a5b50b20c209baefe9fafa53c3d965a33c"
"github.com/jbenet/go-sockaddr 2e7ea655c10e4d4d73365f0f073b81b39cb08ee1"
"github.com/json-iterator/go 36b14963da70d11297d313183d7e6388c8510e1e"
"github.com/juju/ratelimit 5b9ff866471762aa2ab2dced63c9fb6f53921342"
"github.com/kardianos/osext ae77be60afb1dcacde03767a8c37337fad28ac14"
"github.com/kelseyhightower/envconfig f611eb38b3875cc3bd991ca91c51d06446afa14c"
"github.com/mailru/easyjson d5b7844b561a7bc640052f1b935f7b800330d7e0"
"github.com/matttproud/golang_protobuf_extensions c12348ce28de40eed0136aa2b644d0ee0650e56c"
"github.com/Microsoft/go-winio 78439966b38d69bf38227fbf57ac8a6fee70f69a"
"github.com/Microsoft/hcsshim 34a629f78a5d50f7de07727e41a948685c45e026"
"github.com/mipearson/rfw 6f0a6f3266ba1058df9ef0c94cda1cecd2e62852"
"github.com/onsi/ginkgo f40a49d81e5c12e90400620b6242fb29a8e7c9d9"
"github.com/onsi/gomega c893efa28eb45626cdaa76c9f653b62488858837"
"github.com/pborman/uuid ca53cad383cad2479bbba7f7a1a05797ec1386e4"
"github.com/peterbourgon/diskv 5f041e8faa004a95c88a202771f4cc3e991971e6"
"github.com/projectcalico/go-json 6219dc7339ba20ee4c57df0a8baac62317d19cb1"
"github.com/projectcalico/go-yaml 955bc3e451ef0c9df8b9113bf2e341139cdafab2"
"github.com/projectcalico/go-yaml-wrapper 598e54215bee41a19677faa4f0c32acd2a87eb56"
"github.com/projectcalico/libcalico-go 7c2de5ed8c029f222d87fc849b54c4075ef3173f"
"github.com/projectcalico/typha 0bba94171368573d2a936e02454b1762ff7fba7f"
"github.com/prometheus/client_golang 967789050ba94deca04a5e84cce8ad472ce313c1"
"github.com/prometheus/client_model 99fa1f4be8e564e8a6b613da7fa6f46c9edafc6c"
"github.com/prometheus/common 2e54d0b93cba2fd133edc32211dcc32c06ef72ca"
"github.com/prometheus/procfs f98634e408857669d61064b283c4cde240622865"
"github.com/PuerkitoBio/purell 8a290539e2e8629dbc4e6bad948158f790ec31f4"
"github.com/PuerkitoBio/urlesc 5bd2802263f21d8788851d5305584c82a5c75d7e"
"github.com/satori/go.uuid 879c5887cd475cd7864858769793b2ceb0d44feb"
"github.com/sirupsen/logrus d682213848ed68c0a260ca37d6dd5ace8423f5ba"
"github.com/spf13/pflag 9ff6c6923cfffbcd502984b8e0c80539a94968b7"
"github.com/vishvananda/netlink 3ff4c2196115d804aa1c747781ad2b2a5c73e140"
"github.com/vishvananda/netns be1fbeda19366dea804f00efff2dd73a1642fdcc"
"github.com/whyrusleeping/go-logging 0457bb6b88fc1973573aaf6b5145d8d3ae972390"
"golang.org/x/crypto d585fd2cc9195196078f516b69daff6744ef5e84 github.com/golang/crypto"
"golang.org/x/net 3da985ce5951d99de868be4385f21ea6c2b22f24 github.com/golang/net"
"golang.org/x/oauth2 a6bd8cefa1811bd24b86f8902872e4e8225f74c4 github.com/golang/oauth2"
"golang.org/x/sys 7ddbeae9ae08c6a06a59597f0c9edbc5ff2444ce github.com/golang/sys"
"golang.org/x/text 4ee4af566555f5fbe026368b75596286a312663a github.com/golang/text"
"google.golang.org/appengine 5bee14b453b4c71be47ec1781b0fa61c2ea182db github.com/golang/appengine"
"google.golang.org/grpc 8050b9cbc271307e5a716a9d782803d09b0d6f2d github.com/grpc/grpc-go"
"gopkg.in/go-playground/validator.v8 5f57d2222ad794d0dffb07e664ea05e2ee07d60c github.com/go-playground/validator"
"gopkg.in/inf.v0 3887ee99ecf07df5b447e9b00d9c0b2adaa9f3e4 github.com/go-inf/inf"
"gopkg.in/yaml.v2 53feefa2559fb8dfa8d81baad31be332c97d6c77 github.com/go-yaml/yaml"
"k8s.io/api 9b9dca205a15b6ce9ef10091f05d60a13fdcf418 github.com/kubernetes/api"
"k8s.io/apimachinery 5134afd2c0c91158afac0d8a28bd2177185a3bcc github.com/kubernetes/apimachinery"
"k8s.io/client-go 82aa063804cf055e16e8911250f888bc216e8b61 github.com/kubernetes/client-go"
"k8s.io/kube-openapi 868f2f29720b192240e18284659231b440f9cda5 github.com/kubernetes/kube-openapi"
)

inherit golang-vcs-snapshot systemd user

FELIX_COMMIT="53553b4f7ff80d193e8550ee3b31704da5349d42"

KEYWORDS="~amd64"
DESCRIPTION="Calico's per-host agent, responsible for programming routes and security policy"
EGO_PN="github.com/projectcalico/felix"
HOMEPAGE="https://github.com/projectcalico/felix"
SRC_URI="https://${EGO_PN}/archive/${PV}.tar.gz -> ${P}.tar.gz
	${EGO_VENDOR_URI}"
LICENSE="Apache-2.0"
SLOT="0"
IUSE=""

RESTRICT="test"

DEPEND=">=dev-libs/protobuf-3
	dev-go/gogo-protobuf"

src_compile() {
	pushd "src/${EGO_PN}" || die
	protoc --gogofaster_out=. proto/*.proto || die
	GOPATH="${WORKDIR}/${P}" CGO_ENABLED=0 go build -v -o bin/calico-felix -ldflags \
		"-X github.com/projectcalico/felix/buildinfo.GitVersion=${PV} \
		-X github.com/projectcalico/felix/buildinfo.BuildDate=$(date -u +'%FT%T%z') \
		-X github.com/projectcalico/felix/buildinfo.GitRevision=${FELIX_COMMIT}" "github.com/projectcalico/felix" || die
	popd || die
}

src_install() {
	pushd "src/${EGO_PN}" || die
	dobin "bin/calico-${PN}"
	dodoc README.md
	insinto /etc/logrotate.d
	doins debian/calico-felix.logrotate
	insinto /etc/felix
	doins etc/felix.cfg.example
	newinitd "${FILESDIR}"/felix.initd felix
	newconfd "${FILESDIR}"/felix.confd felix
}
