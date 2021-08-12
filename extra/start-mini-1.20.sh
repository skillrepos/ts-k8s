sudo minikube stop
sudo minikube delete
sudo minikube start --vm-driver=none --addons=dashboard --kubernetes-version=v1.20.9 --feature-gates=EphemeralContainers=true --extra-config=apiserver.enable-admission-plugins="NamespaceLifecycle,LimitRanger,ServiceAccount,PersistentVolumeLabel,DefaultStorageClass,ResourceQuota,DefaultTolerationSeconds" 

sudo mv /home/diyuser3/.kube /home/diyuser3/.minikube $HOME
sudo chown -R $USER $HOME/.kube $HOME/.minikube


