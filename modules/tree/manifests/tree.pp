class tree {
  package { 'tree':
    ensure => installed,
  }
  
  notify {'Setup TREE':
    message => "TREE installed successfully",
  }

  file { "/tmp/tree_install_successful":
     owner   => root,
     group   => root,
     mode    => 664,
     ensure  => present,
     source  => "puppet:///files/tree_install_successful"
  }

}
