# VPN Server Configs

## How to setup

``` sh
# Pull docker image
make pull

# Copy config file
cp vpn.env.example vpn.env

# Edit vpn.env file...
emacs -nw vpn.env

# Run server
make run
```

## Check status

``` sh
# Check logs
make logs

# Check status
make status

# Check connections
make traffic
```

## Refs

[docker project](https://github.com/hwdsl2/docker-ipsec-vpn-server)