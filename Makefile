pull:
	docker pull hwdsl2/ipsec-vpn-server

run:
	docker run \
		--name ipsec-vpn-server \
		--env-file ./vpn.env \
		--restart=always \
		-p 500:500/udp \
		-p 4500:4500/udp \
		-v /lib/modules:/lib/modules:ro \
		-d --privileged \
		hwdsl2/ipsec-vpn-server

stop:
	docker stop ipsec-vpn-server

logs:
	docker logs ipsec-vpn-server

status:
	docker exec -it ipsec-vpn-server ipsec status

traffic:
	docker exec -it ipsec-vpn-server ipsec whack --trafficstatus
