# MPD Docker setup

```
./run.sh /path/to/music/
```

YMPD seems promising for a web UI, but I've not tested it thoroughly:

```
MPD_CONTAINER="<MPD container name>"
docker run --link $MPD_CONTAINER --rm -it -p 80:8080 ympd:latest ympd -h $MPD_CONTAINER -p 6600
```
