class neo4j ( $version = "1.4.1" ) {

  exec { "add-key":
    command => "/usr/bin/wget -O - http://debian.neo4j.org/neotechnology.gpg.key | /usr/bin/apt-key add -",
    user => root
  }

  exec { "add-sources":
    command => "/bin/echo 'deb http://debian.neo4j.org/repo stable/' > /etc/apt/sources.list.d/neo4j.list",
    path => "~",
    user => root,
    before  => Exec["add-key"]
  }

  exec { "update-aptitude-neo4j":
    command => "/usr/bin/apt-get update -y",
    before  => Exec["add-sources"]
  }

  exec { "install":
    command => "/usr/bin/apt-get install neo4j -y",
    before  => Exec["update-aptitude-neo4j"]
  }
}