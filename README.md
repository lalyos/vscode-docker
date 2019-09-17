Headless VSCode running in a container, with preinstalled extension:
- 

```
docker run \
  -p 8080:8080 \
  -v $PWD:/app \
  docker.pkg.github.com/lalyos/vscode-docker/code-server:latest
```

open http://localhost:8080 