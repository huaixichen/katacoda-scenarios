ssh root@[[HOST_IP]] 'echo "Host *" >> /root/.ssh/config && echo "    StrictHostKeyChecking no" >> /root/.ssh/config && chmod 400 /root/.ssh/config'

ssh root@node01 'docker pull bitnami/mongodb:3.7.1-r0'
ssh root@node02 'docker pull bitnami/mongodb:3.7.1-r0'
ssh root@node03 'docker pull bitnami/mongodb:3.7.1-r0'
./ingress.sh >> ingress.yaml
