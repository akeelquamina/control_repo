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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC1nRMEIFp2bVMTA6p3K9mlWpb/SRIK+1C4EJqizErdXFG+/EUCa+ZYhAle+/2Cqb7MdPrB0tTDj0e6jKoSk716tIwtWCiQp2g4blGh8K0qOaBsiJ3BmCQU/3rYnkEeanvqiQKBMAuo6vh8KUvLFhP9ZABlLCiUDLE/LnSXrsURM24zHVUjggnVJ910Wim2ulkBEePcVuIiN5ji7tT/bgLFn4wr7264+vEdv0z2QeWCmlg7/jBYIZ07AqU4r37XZO/zy20O6b7h5IETrBd82eurx2Usggk4UfutW7vZL11WQf5unnJqQdvg/Zx9kO0f4TWVjYskz+1PQ9Tn+PvdQ3tH',
	}  
}
