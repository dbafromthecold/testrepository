## https://blog.alexellis.io/continuous-integration-docker-windows-containers/

cd C:\git\dbafromthecold\testrepository\jenkins\JavaBaseImage

docker build -t windows-java:jre1.8.0_91 .



cd C:\git\dbafromthecold\testrepository\jenkins

docker build -t jenkins-windows:2.0 .



docker run --name jenkinsci -p 8080:8080 -p 50000:50000 -d jenkins-windows:2.0

docker logs jenkinsci