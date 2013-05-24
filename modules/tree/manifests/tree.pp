class tree {
  package { 'tree':
    ensure => installed,
  }

  file { "/tmp/tree_install_successful":
     owner   => root,
     group   => root,
     mode    => 664,
     ensure  => present,
     source  => "/etc/puppet/files/tree_install_successful"
  }
  
  notify {'Setup TREE':
    message => "TREE installed successfully",
  }
}
