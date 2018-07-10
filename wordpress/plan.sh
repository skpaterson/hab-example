pkg_name=wordpress
pkg_origin=habskp
pkg_version="0.1.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("Apache-2.0")
pkg_source="https://wordpress.org/${pkg_name}-${pkg_version}.tar.gz"
pkg_svc_user="root"

pkg_binds=(
  [database]="port username password local_only"
  [php]="port local_only"
)

pkg_deps=(core/nginx core/mysql-client)

pkg_exports=(
   [port]=http.listen.port
)

pkg_svc_user="root"

do_build(){
  return 0
}

do_install() {
  cp -r "$source_dir" "$pkg_prefix/public_html/"
}
