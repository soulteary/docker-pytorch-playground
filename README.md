# Docker Pytorch Playground

Running models faster and easier, support for x86 and ARM (M1, M1Pro).

## How to Use

It's easy to use:

```bash
docker pull soulteary/docker-pytorch-playground
```

## Docker Images

- soulteary/docker-pytorch-playground:latest
- soulteary/docker-pytorch-playground:2022.05.19

## Build

```bash
docker build -t soulteary/docker-pytorch-playground .
```

If you need to replace the software source:

```bash
docker build --build-arg USE_MIRROR=true -t soulteary/docker-pytorch-playground .
```
