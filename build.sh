docker build --tag cdh:1.0 .; docker tag cdh:1.0 welly87/cdh:1.0; docker push welly87/cdh:1.0


docker tag centos7:1.0 welly87/centos7:1.0

docker push welly87/centos7:1.0




docker build --tag wbuntu:1.0 .; docker tag wbuntu:1.0 welly87/wbuntu:1.0; docker push welly87/wbuntu:1.0

docker build --tag pgsql:12.0 .; docker tag pgsql:12.0 welly87/pgsql:12.0; docker push welly87/pgsql:12.0

docker build --tag cdhbase:4.0 .; docker tag cdhbase:4.0 welly87/cdhbase:4.0; docker push welly87/cdhbase:4.0

docker build --tag cdh:5.0 .; docker tag cdh:5.0 welly87/cdh:5.0; docker push welly87/cdh:5.0


docker run -it --privileged=true -u root cdh:5.0


docker tag welly87/cdh:5 welly87/cdh:5; docker push welly87/cdh:5

git config --global user.email "if05041@gmail.com"
git config --global user.name "Welly Tambunan"