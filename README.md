# Docker Swagger Codegen

Docker image to easily run [Swagger Codegen](https://swagger.io/tools/swagger-codegen/).

## Usage

Build the image:

```bash
docker build -t codegen .
```

Run the generator:

```bash
docker run -v "$PWD/out:/out" -it codegen \
    -i https://petstore.swagger.io/v2/swagger.json \
    -l go
```
