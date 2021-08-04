# Install the dconf packages
#
# @api private
class dconf::install {
  assert_private()

  $packagename = $facts['os']['family'] ? {
    'Debian' => 'dconf-cli',
    default  => 'dconf',
  }

  ensure_packages( $packagename, { 'ensure' => $dconf::package_ensure } )
}
