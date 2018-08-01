class ntp::params {
  $autoupdate = false
  $default_service_name = 'ntpd'
  case $::osfamily {
    'AIX': { $service_name = 'xntpd' }
    'Debian': { $service_name = 'ntpd' }
    'RedHat': { $service_name = $default_service_name }
  }
}
