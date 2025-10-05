# checklist

```
mongod, mongod.conf, users_init.sh must be LF of EOL
```

```
mongosh -u root -p pass
```


# dockerfile

```docker
docker build -t <IMAGE-NAME>:<TAG> -f <DOCKERFILE> . --no-cache
```

# multi architecture
```docker
docker buildx build --platform linux/amd64,linux/arm64 -t <IMAGE-NAME>:<TAG> --push .
```

# arm64 native
```docker
docker buildx build --platform linux/arm64 -t image:tag --push .
```

# run

```docker
docker run -it --name <CONTAINER-NAME> -d -p <LOCAL-PORT:CONTAINER-PORT> <IMAGE-NAME>
```
- <IMAGE-NAME>을 <CONTAINER-NAME>으로 실행. port는 <LOCAL-PORT:CONTAINER-PORT>로 연결
- -d(daemon) : 백그라운드에서 컨테이너 실행
    
```docker
docker-compose -p <PROJECT-NAME> up -d
```
- docker-compose.yml 이 있는 경로에서 실행
- <PROJECT-NAME>으로 compose 생성


- 만약 dockerhub 에 push 하려면 image-name 앞에 account 이름을 적어야 함(jiminu/image-name)

```docker
docker push <IMAGE-NAME>
docker pull <IMAGE-NAME>
```

```docker
docker image tag <BEFORE-IMAGE> <AFTER-IMAGE>
```

# example
1. docker build -t <IMAGE-NAME>:<TAG> -f <DOCKERFILE> <PATH>
2. docker-compose -f <DOCKER-COMPOSE> -p <PROJECT-NAME> up -d