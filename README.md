# dockerfile

```docker
docker run --name [container_name] -d -p [local_port:image_port] [image_name]
```
- [image_name]을 [container_name]으로 실행. port는 [local_port:image_port]로 연결
- -d(daemon) : 백그라운드에서 컨테이너 실행
    
```docker
docker-compose -p [project_name] up -d
```
- docker-compose.yml 이 있는 경로에서 실행
- [project_name]으로 compose 생성