# Maintainer: FlabIt <FlabIt@flabdev.de>
pkgname=portmaster-openrc
pkgdesc='OpenRC portmaster init script'
pkgver=0.7.10.r1.fd43c29
pkgrel=1
arch=('any')
url='https://github.com/FlabIt/portmaster-openrc.git'
license=('MIT')
groups=()
#depends=('portmaster') <-- Uncomment when portmaster becomes available on AUR
source=("${pkgname}-${pkgver}-${pkgrel}.tar.gz::https://github.com/FlabIt/${pkgname}/releases/download/${pkgver}/${pkgver}.tar.gz")
sha256sums=('09eaa4dee8a122835bca809b2d642542d0fff726f9dc9fa9669587c5d393ae51')

package() {
    install -m 755 -D "${srcdir}/portmaster.initd" "${pkgdir}/etc/init.d/portmaster"
}
