# kafka-sandbox
Kafka Development environment in one command

### Usage 

You will need Docker and Docker Compose installed and the Docker daemon running.

Ensure that that `ADV_HOST` variable is set to the LAN IP of the machine running the Docker containers. 

You will also need an entry in your `/etc/hosts` file on the client machine pointing the IP to the container ID. Something like this: `192.168.1.14 b948cea973d3`.

```bash
git clone git@github.com/vipertoothlabs/kafka-sandbox.git
cd kafka-sandbox
docker-compose up -d
```
This will take a couple of minutes to complete. 

You can view the dashboard at `http://localhost:3030/`. TLS certificates and keys can be downloaded from here `http://localhost:3030/certs/`.



