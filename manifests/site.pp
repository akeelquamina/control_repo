node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a README hoss',
    owner   => 'root',
    }
  file {'/root/README':
    owner => 'root',
  }
}
