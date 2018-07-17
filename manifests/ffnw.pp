class ffnord::ffnw (
) inherits ffnord::params {
  include ffnord::bird4
  include ffnord::bird6

  file {
    '/etc/bird/bird6.conf.d/ffnw.conf':
      mode => '0644',
      owner => 'root',
      group => root,
      content => template(),
      notify => Service['bird6'],
      require => Class[ffnord::bird6]
  }
}
