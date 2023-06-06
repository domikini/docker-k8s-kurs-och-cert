_---
marp: true
theme: default
style: |
  img[alt~="center"] {
    display: block;
    margin: 0 auto;
  }
---

# 8. Configuration

```
 _  __     _                          _            
| |/ /   _| |__   ___ _ __ _ __   ___| |_ ___  ___ 
| ' / | | | '_ \ / _ \ '__| '_ \ / _ \ __/ _ \/ __|
| . \ |_| | |_) |  __/ |  | | | |  __/ ||  __/\__ \
|_|\_\__,_|_.__/ \___|_|  |_| |_|\___|\__\___||___/


```

##### presenterad av Dominic Chan, dominic.chan@knowit.se

---

# SSH till er AWS instans

`ssh -i ~/.ssh/aws-linux-demo.pem ubuntu@ubuntu@ec2-16-171-26-141.eu-north-1.compute.amazonaws.com`

---

# Installera Minikube

1. `cd docker-k8s-kurs-och-cert`
2. `cd 8-configuration`
3. `cat minikube.sh`
4. `sudo chmod +x minikube.sh`
5. `./minikube.sh`
6. Kör kommandot `source /home/ubuntu/.bashrc`

---

![h:500px center](./images/yaml-compared.png)

---

![h:500px center](./images/kubernetes-persistent-volume-subsystem.png)

---

# Konfigurera dynamisk volym med Storage class

- https://minikube.sigs.k8s.io/docs/tutorials/volume_snapshots_and_csi/
- `minikube addons enable volumesnapshots`
- `minikube addons enable csi-hostpath-driver`
- `kubectl get storageclass`
- pvc-storage-class-prepped.yaml
- `kubectl apply -f pvc-storage-class-prepped.yaml`
- `kubectl get pvc`
- `kubectl get pv`

---

# Configuration

- ConfigMaps
- Secrets
  ![h:500px center](./images/deployment-diagram.png)

---

# ConfigMaps

- ConfigMaps används för att frikoppla konfiguration från containerimage och applikation
- Används för att specificera konfigurationsparametrar som läses in av container/applikation

---

# ConfigMaps

Skapa ConfigMap

- Imperativt - `kubectl create configmap <configmap-name> <data-source>`
- Deklarativt - från yaml manifest

---

# ConfigMaps - imperativt

`kubectl create configmap test-configmap-dir --from-file=./configmap/`
`kubectl create configmap test-configmap-files --from-file=./configmap/game.properties --from-file=./configmap/ui.properties`
`kubectl create configmap test-configmap-file --from-file=./configmap/game.properties`
`kubectl create configmap test-configmap-env-file --from-env-file=./configmap/game-env-file.properties`
`kubectl create configmap test-configmap-env-files --from-env-file=./configmap/game-env-file.properties --from-env-file=./configmap/ui-env-file.properties`
`kubectl create configmap test-configmap-literal --from-literal=zone=prod`

---

# Secrets

---

# Security context

1. `kubectl apply -f pod-busybox-prepped.yaml`
2. `kubectl exec -it busybox -- /bin/sh`
3. `id`

1. `kubectl apply -f pod-busybox-security-context-prepped.yaml`
2. `kubectl exec -it secbusybox -- /bin/sh`
3. `id`

---

# Resources

---

# Övningar

- https://medium.com/bb-tutorials-and-thoughts/practice-enough-with-these-questions-for-the-ckad-exam-2f42d1228552 från
  övningarna 105 - 131

---_