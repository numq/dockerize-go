# *COPY & PASTE* Golang application dockerizing

Working *alpine* based *multi-stage Docker configuration. Includes Dockerfile and docker-compose.yml

*[Multi-stage](https://docs.docker.com/build/building/multi-stage/) - *this is a way to reduce an image size creating an empty image and copying the binary file into it.*

*Once again schematically:*

<ul>
    <li>First stage</li>
    <ul>
        <li>Create a new image</li>
        <li>Install dependencies</li>
        <li>Build binaries</li>
    </ul>
    <li>Second stage</li>
    <ul>
        <li>Create a new image</li>
        <li>Copy binaries</li>
        <li>Launch</li>
    </ul>
</ul>

# Run:
```
docker compose up [OPTIONS] [SERVICE...]
```