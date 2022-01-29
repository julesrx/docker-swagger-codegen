# Docker Swagger Codegen

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
