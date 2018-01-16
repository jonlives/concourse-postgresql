#@IgnoreInspection BashAddShebang
pkg_name=concourse-postgresql
pkg_origin=jonlives
pkg_version="1.0.0"
pkg_maintainer="Jon Cowie <jonlives@gmail.com>"
pkg_license=('Apache-2.0')
pkg_deps=(core/glibc
          core/postgresql)
pkg_build_deps=(core/patchelf)
pkg_bin_dirs=(bin)
pkg_description="CI that scales with your project"

pkg_exports=(
  [db_username]=db_username
  [db_password]=db_password
  [db_name]=db_name
)

do_build(){
  return 0
}

do_install(){
return 0
echo "$(pkg_path_for core/postgresql)/bin/psql"
}
