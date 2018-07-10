pkg_name=mysql
pkg_origin=habskp
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("Apache-2.0")
pkg_version=5.7.21
vendor_origin="core"
pkg_upstream_url=https://www.mysql.com/
pkg_description="Wrapper for core/mysql"
pkg_deps=(
  ${vendor_origin}/${pkg_name}/${pkg_version}
)

pkg_svc_user="hab"

pkg_exports=(
  [port]=port
  [password]=app_password
  [username]=app_username
  [bind]=bind
)

do_build() {
  return 0
}

do_install() {
  return 0
}

