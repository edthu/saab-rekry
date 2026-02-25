# Mini-CMS environment setup
## Dependencies
- Docker
- jq (installed by default on most Linux systems)

Follow the installation instructions for your system from the [official Docker documentation](https://docs.docker.com/engine/install/).

jq can be installed from [its official website](https://jqlang.org/download/) or your systems package manager.

## Running
Make sure Docker is running on your system before you start the application.

```bash
docker compose up -d             # start mini-cms
docker compose logs display-node # see logged pings
chmod +x health-check.sh         # give execution rights to health-check-sh
./health-check.sh                # check health of services and log sensor-node IP-address to log.txt
```
