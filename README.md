# checklist

```
mongod, mongod.conf, users_init.sh must be LF of EOL
```

```
mongosh -u root -p pass
```


# dockerfile

```docker
docker build -t [image_name:tag] -f [dockerfile_name] [path] --no-cache
```

# multi architecture
```docker
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  -t <도커허브계정>/<이미지이름>:tag \
  --push \
  .
```

# run

```docker
docker run -it --name [container_name] -d -p [local_port:image_port] [image_name]
```
- [image_name]을 [container_name]으로 실행. port는 [local_port:image_port]로 연결
- -d(daemon) : 백그라운드에서 컨테이너 실행
    
```docker
docker-compose -p [project_name] up -d
```
- docker-compose.yml 이 있는 경로에서 실행
- [project_name]으로 compose 생성


- 만약 dockerhub 에 push 하려면 image_name 앞에 account 이름을 적어야 함(jiminu/image_name)

```docker
docker push [image_name]
docker pull [image_name]
```

```docker
docker image tag [before_image] [after_image]
```

# example
1. docker build -t [image_name:tag] -f [dockerfile_name] [path]
2. docker-compose -f [docker-compose_name] -p [project_name] up -d