# docker compose for MSA project.

## 1. compose-gateway

spring cloud gateway, eureka가 포함되어 있습니다 .

## 2. compose-ngrinder

ngrinder controller와 agent가 포함되어 있습니다.

## 3. compose-service

spring service들이 포함되어 있습니다. 

각 docker compose 는 각각의 aws instance에 올라갑니다. 

<img width="994" alt="Image" src="https://github.com/user-attachments/assets/96531457-44c4-4a53-9d88-d3e92af645ad" />



## test

```bash
$ sudo docker compose -f compose-test.yml up -d  
```