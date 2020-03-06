# K8smm Pod for lab

[![Docker](https://github.com/mm-k8s-ug/k8smm-weblab/workflows/Docker/badge.svg)](https://github.com/mm-k8s-ug/k8smm-weblab/actions?query=workflow%3ADocker)
[![Docker Repository on Quay](https://quay.io/repository/dther/hola/status "Docker Repository on Quay")](https://quay.io/repository/dther/hola)
Testing container for pod. writing with golang and lightweghit container.
Need two Env -
* COLOR
* PG_TITLE

```bash
$ docker built -t k8smm-weblab .
$ docker run -d -p 8080:8080 k8smm-weblab
$ docker images

```

   
