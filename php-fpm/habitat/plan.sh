pkg_name=php-fpm
pkg_origin=habskp
pkg_version="0.1.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("Apache-2.0")

pkg_svc_user=root
pkg_svc_group=$pkg_svc_user

pkg_svc_run="php-fpm -y $pkg_svc_config_path/php-fpm.conf"

pkg_deps=(core/php core/readline)

pkg_exports=(
  [port]=port
  [bind]=bind
)

pkg_binds=()

do_build(){
  return 0
}

do_install() {
  return 0
}
