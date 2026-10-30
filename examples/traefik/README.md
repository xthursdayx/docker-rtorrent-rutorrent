## Usage

```shell
mkdir config downloads passwd
chown ${PUID}:${PGID} config downloads passwd
touch acme.json
chmod 600 acme.json
docker compose up -d
docker compose logs -f
```
