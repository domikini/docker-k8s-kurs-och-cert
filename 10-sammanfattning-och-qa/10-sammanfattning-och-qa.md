---
marp: true
theme: default
style: |
  img[alt~="center"] {
    display: block;
    margin: 0 auto;
  }
---

# 10. Sammanfattning och QA

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
2. `cd 10-sammanfattning-och-qa`
3. `cat minikube.sh`
4. `sudo chmod +x minikube.sh`
5. `./minikube.sh`
6. Kör kommandot `source /home/ubuntu/.bashrc`

---

# Jobs och Cronjobs
- `cat job.yaml`
- `kubectl apply -f job.yaml`
- `cat cronjob.yaml`
- `kubectl apply -f cronjob.yaml`

---

# Custom Resource Definition (CRD) och Custom Controllers
- Kubernetes ger möjlighet att skapa egna Kubernetes objekt och kontroller
- https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/

---

# Certified Kubernetes Application Developer - CKAD
- Curriculum - https://github.com/cncf/curriculum/blob/master/CKAD_Curriculum_v1.27.pdf

---

# Registrera och köpa voucher på Linux Foundation
- https://training.linuxfoundation.org/certification/certified-kubernetes-application-developer-ckad/#

---

# Provsimulator - killer.sh
- Ingår två sessioner per voucher
- Svårare än det riktiga certifieringsprovet
- Fler frågor än på det riktiga provet
- Samma miljöuppsättning som på provet
- Man får svar på frågorna och man får tid på sig att repetera
- https://killer.sh/faq

---

# Ytterligare läromaterial, länkar och referenser
- https://medium.com/bb-tutorials-and-thoughts/practice-enough-with-these-questions-for-the-ckad-exam-2f42d1228552
- Pluralsight - https://app.pluralsight.com/paths/certificate/certified-kubernetes-application-developer-ckad-2023
- Nigel Poulton
- Dan Wahlin

---

# Tips och tricks - verktyg och kommandon

Lägg till i .bashrc som finns i hemkatalogen

```
alias k=kubectl                         # Finns redan förkonfigurerad

export do="--dry-run=client -o yaml"    # k create deploy nginx --image=nginx $do

export now="--force --grace-period 0"   # k delete pod x $now

alias kn='kubectl config set-context --current --namespace ' # kn kube-system
```

---

# Tips och tricks - självaste provdagen
- Man får enbart ha en skärm. En ultra wide skärm är en fördel
- Ha gärna en bra extern webkamera till hands
- Ha ett glas vatten
- Lägg in shortcuts till kommandon i .bashrc
- Identifiera de "stora" frågorna och gör de först
- Notera de frågor som är "små" som du inte kan lösa direkt
- Du behöver enbart passera 66% rätt, värt att inte fastna på en fråga
- Det är cirka 15-17 frågor på totalt 2 timmar. Du får delpoäng om du svarar delvist rätt.

---

# Sammanfattning - Kubernetes material och länkar
- Teams kanalen på Knowit Development -> Cloud Native
- https://github.com/domcha-knowit/docker-k8s-kurs-och-cert
- https://training.linuxfoundation.org/certification/certified-kubernetes-application-developer-ckad/#
- https://trainingportal.linuxfoundation.org/learn/dashboard
- https://killer.sh/

---

/ ___| | __ _  __| |
| |  _| |/ _` |/ _` |
| |_| | | (_| | (_| |
\____|_|\__,_|\__,_|

           _     _                                          
_ __ ___ (_) __| |___  ___  _ __ ___  _ __ ___   __ _ _ __
| '_ ` _ \| |/ _` / __|/ _ \| '_ ` _ \| '_ ` _ \ / _` | '__|
| | | | | | | (_| \__ \ (_) | | | | | | | | | | | (_| | |   
|_| |_| |_|_|\__,_|___/\___/|_| |_| |_|_| |_| |_|\__,_|_|


---