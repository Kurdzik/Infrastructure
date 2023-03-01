docker stop artifactory
docker system prune -f
docker run -d -p 8081-8082:8081-8082 --name artifactory -v /home/panda/artifactory:/artifactory_extra_conf docker.bintray.io/jfrog/artifactory-jcr:7.39.4
curl -XPOST -vu admin:password http://192.168.44.44:8081/artifactory/ui/jcr/eula/accept
