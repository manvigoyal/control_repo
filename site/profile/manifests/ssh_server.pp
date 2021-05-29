class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDml3cyFTmBSh56XHyf+8HFRVlQ44ZfqPMP2SJn71TR0tpNDxjQse+yEe1egzT/4NX/qfMBDUpvwJURY2UvEyef0uTm3BmKwHigS8lY0BCJYq14smj5TL5f82T0L2Gd5XwjwQAs70Z6Q30tzx7a41J814Z2VPgS2iUmzfScPz8b4f1dMlsRxRMVB3uj6iijiuSv2vP1tIxXoh8FbVrtW19jneA+fDozm2mPCMThFJQ8J/dJeAZ3uWCQ+DQZD9LDl2qGKvu5Bxszp79N5dHhm115nX61oj8Tw253tSBcIUoRu0szuFbKmk2iM8rYQdK24hp9va8BCjykcrEU7rE1o9j1',
  }  
}
