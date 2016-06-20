# centos-sshd

[![Docker image for sshd on CentOS](http://dockeri.co/image/soli/centos-sshd "Docker image for sshd on CentOS")](https://hub.docker.com/r/soli/centos-sshd/ "Docker image for sshd on CentOS")

Docker image for sshd on CentOS.

## Usage Example

```
docker run -d -p 2222:22 -v ~/.ssh/id_rsa.pub:/root/.ssh/authorized_keys:ro --name sshd soli/centos-sshd
```

