

# USAGE

`git clone https://github.com/jwesleye/dockerAWScli.git`

`cd dockerAWScli`

add certs to aws_certs folder

`docker build -t awscli .`

`docker run -it awscli bash`

then to connect to awscli

`ssh ec2-user@<IPADDRESS> -i /aws_certs/<CERTNAME>.pem`
