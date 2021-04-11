# NS-3 Docker Image
https://www.nsnam.org/releases/ns-3-30/

Docker recipe for building and starting an ns-3.30 image

## Building the image
You can build the docker image by running:
```
make build
```

To start the image, simply run:
```
make start
```

## Testing the image
To make sure that it works, in the container run:

1. ``` cd ns-allinone-3.30/ns-3.30/ ```
2. ``` cp examples/tutorial/second.cc scratch/ ```
3. ``` ./waf --run scratch/second   ```

Expected output:

```
Waf: Entering directory `/usr/ns-allinone-3.30/ns-3.30/build'
[2623/2671] Compiling scratch/second.cc
[2631/2671] Linking build/scratch/second
Waf: Leaving directory `/usr/ns-allinone-3.30/ns-3.30/build'
Build commands will be stored in build/compile_commands.json
'build' finished successfully (6.761s)
At time 2s client sent 1024 bytes to 10.1.2.4 port 9
At time 2.0078s server received 1024 bytes from 10.1.1.1 port 49153
At time 2.0078s server sent 1024 bytes to 10.1.1.1 port 49153
At time 2.01761s client received 1024 bytes from 10.1.2.4 port 9

```

## Alternative images and repositories

* Aphirak https://hub.docker.com/r/aphirak/ns3-docker v3.30
* Carloslopesufpa https://hub.docker.com/r/carloslopesufpa/ns3-3.30 v3.30
* Yakout https://github.com/yakout/ns3-docker v3.26

## License 

[MIT License](/LICENSE) © Hygor Jardim