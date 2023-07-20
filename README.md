# Dockerize Go

Docker Multi-stage Build for Tiny Go Image Deployment.

*[Multi-stage](https://docs.docker.com/build/building/multi-stage/) - *this is a way to reduce an image size creating an
empty image and copying the binary file into it.*

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