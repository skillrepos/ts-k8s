sudo minikube delete
rm -rf ~/.minikube/
docker ps --filter status=dead --filter status=exited -aq | grep minikube | xargs -r docker rm -v
docker images --no-trunc | grep '<none>' | awk '{ print $3 }' | grep minikube | xargs -r docker rmi


docker images | grep minikube | xargs docker rmi
sudo minikube start --vm-driver=none --addons=dashboard --kubernetes-version=v1.21.1 --feature-gates=EphemeralContainers=true --extra-config=apiserver.enable-admission-plugins="NamespaceLifecycle,LimitRanger,ServiceAccount,PersistentVolumeLabel,DefaultStorageClass,ResourceQuota,DefaultTolerationSeconds" 

sudo mv /home/diyuser3/.kube /home/diyuser3/.minikube $HOME
sudo chown -R $USER $HOME/.kube $HOME/.minikube


