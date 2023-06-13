---
marp: true
theme: default
style: |
  img[alt~="center"] {
    display: block;
    margin: 0 auto;
  }
---

# 9. Observability

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
2. `cd 9-observability`
3. `cat minikube.sh`
4. `sudo chmod +x minikube.sh`
5. `./minikube.sh`
6. Kör kommandot `source /home/ubuntu/.bashrc`

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

- https://kubernetes.io/docs/tasks/configure-pod-container/assign-cpu-resource/
- `minikube addons enable metrics-server`
- `kubectl apply -f pod-cpu-demo-resources.yaml`
- `kubectl top pods`
- `kubectl apply -f pod-memory-demo-resources.yaml`
- `kubectl top pods`

---

# Probes

- Liveness probe
- Readiness probe
- Startup probe
https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#configure-probes

---

# Felsökningskommandon

- `kubectl get <objekt> -o yaml`
- `kubectl logs <pod-namn> -c <container-namn>`
- `kubectl logs -f <pod-namn> -c <container-namn>`
- `kubectl describe <objekt>`
- `kubectl get events`

---

# Övningar

- https://medium.com/bb-tutorials-and-thoughts/practice-enough-with-these-questions-for-the-ckad-exam-2f42d1228552 från
  övningarna 132 - 143

---