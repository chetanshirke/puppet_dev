class tree {
  package { 'tree':
    ensure => installed,
  }

  file { "/tmp/tree_install_successful" :
    mode => 664,
    content => template("tree/tree_install_successful.erb")
  }

  notify {'Setup TREE':
    message => "TREE installed successfully",
  }
}
