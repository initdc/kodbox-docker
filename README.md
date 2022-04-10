# kodbox on docker

the kodbox runing on ```php + nginx + sqlite + redis```

## docker run

quick start

```
docker run -dp 80:80 initdc/kodbox
```

keep files with custom directory

```c
// cd to custom dir you want
cd /root

mkdir data data/files
```

```
docker run -p 80:80 -v /root/data/files:/var/www/html/data/files initdc/kodbox
```

## docker-compose
create a file named  ```docker-compose.yml```

copy the following content to it

```
services:
    image: initdc/kodbox
    ports:
      - 80:80
    volumes:
      - /root/data/files:/var/www/kodbox/data/files
```

then run with 

```
docker-compose up -d 
```

## Contributing

[nocode](https://github.com/kelseyhightower/nocode) Thanks for readme template.
