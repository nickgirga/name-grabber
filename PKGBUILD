# Maintainer: Nicholas Girga <contact@nickgirga.com>
pkgname='name-grabber'
pkgver=3.2
pkgrel=1
pkgdesc="A tool to grab the name of a specified window at a set interval of time"
arch=('any')
url="https://gitlab.com/nickgirga/name-grabber"
license=('GPL3')
depends=('python' 'python-gobject' 'gtk3' 'xdotool')
source=('name-grabber-git::git+https://gitlab.com/nickgirga/name-grabber.git')
md5sums=('SKIP')

pkgver() {
	cd "$srcdir/name-grabber-git"
	printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
    cd "$srcdir/name-grabber-git"
    install -Dm755 ./name-grabber "$pkgdir/usr/bin/name-grabber"
    install -Dm644 ./main.glade "$pkgdir/usr/share/name-grabber/main.glade"
    install -Dm644 ./res/icon_16x16.png "$pkgdir/usr/share/name-grabber/res/icon_16x16.png"
    install -Dm644 ./res/icon_128x128.png "$pkgdir/usr/share/name-grabber/res/icon_128x128.png"
    install -Dm644 ./res/icon_256x256.png "$pkgdir/usr/share/name-grabber/res/icon_256x256.png"
    install -Dm644 ./name-grabber.desktop "$pkgdir/usr/share/applications/name-grabber.desktop"
}
