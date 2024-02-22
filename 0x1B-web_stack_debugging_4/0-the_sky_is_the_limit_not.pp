# make the limit higer
exec { 'file limit':
  onlyif   => 'test -e /etc/default/nginx',
  command  => 'sed -i 5s/[0-9]+/1048576/ /etc/default/nginx; service nginx restart',
  provider => shell,
}
