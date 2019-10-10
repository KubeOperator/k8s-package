registry="registry.fit2cloud.com/public"
for i in $(cat requirements/images.txt);
do
  docker pull $registry/$i;
  docker tag  $registry/$i localhost:8092/$i;
  docker push localhost:8092/$i;
done

yum clean all
yum makecache

for r in $(cat requirements/rpms.txt);
do
  yumdownloader --resolve --destdir=/tmp $r
done
