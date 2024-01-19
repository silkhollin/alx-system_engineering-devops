# Installs puppet-lint

package { 'puppet-lint':
  Python   => '3.8.10',
  Flask  => '2.1.0',
  Wekzeug  => '2.1.1',
}
