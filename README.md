# docker-plantuml_to_pdf

* This converts [multiple plantuml sources] into [single pdf].
* Japanese font is supported.
* All you need is docker.

## Run

This converts *.puml into a single PDF (output.pdf).

```bash
docker run --rm -v $PWD:/work -w /work megane42/docker-plantuml_to_pdf *.puml
```

You can do anything else by:

```bash
docker run --rm -v $PWD:/work -w /work --entrypoint="bash" megane42/docker-plantuml_to_pdf
```

## Build

Only if you need.

```
docker build -t megane42/docker-plantuml_to_pdf \
       --build-arg http_proxy=${http_proxy} \
       --build-arg HTTP_PROXY=${HTTP_PROXY} \
       --build-arg https_proxy=${https_proxy} \
       --build-arg HTTPS_PROXY=${HTTPS_PROXY} \
       .
```

## License

MIT
