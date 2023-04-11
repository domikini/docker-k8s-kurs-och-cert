---
marp: true
theme: default
style: |
    img[alt~="center"] {
      display: block;
      margin: 0 auto;
    }
---


# docker-k8s-kurs-och-cert
Certifieringsförberedande Intern utbildning på Knowit kring Docker och Kubernetes

Genomgångarna kommer att spelas in och laddas upp på gemensamt share.

Genomgång:

1. Introduktion - sätta upp labmiljön, AWS, Github, Docker, Minikube. 
   Certifieringsinfo - vilka certifieringar finns och vad är bra att tänka på. Vilket underlag skall man fokusera på?
2. Docker - Introduktion Docker och övningar på Docker kommandon
3. Kubernetes - Introduktion Kubernetes och översikt. Börja med grundläggande Kubernetes cli kommandon. Grundläggande koncept I.
4. Kubernetes - Grundläggande koncept II
5. Kubernetes - Multicontainer pods
6. Kubernetes - Pod Design
7. Kubernetes - State persistence
8. Kubernetes - Configuration
9. Kubernetes - Observability
10. Kubernetes - Sammanfattning och QA


---

```
 ____             _                ___   
|  _ \  ___   ___| | _____ _ __   ( _ )  
| | | |/ _ \ / __| |/ / _ \ '__|  / _ \/\
| |_| | (_) | (__|   <  __/ |    | (_>  <
|____/ \___/ \___|_|\_\___|_|     \___/\/
                                         
 _  __     _                          _            
| |/ /   _| |__   ___ _ __ _ __   ___| |_ ___  ___ 
| ' / | | | '_ \ / _ \ '__| '_ \ / _ \ __/ _ \/ __|
| . \ |_| | |_) |  __/ |  | | | |  __/ ||  __/\__ \
|_|\_\__,_|_.__/ \___|_|  |_| |_|\___|\__\___||___/

```
##### presenterad av Dominic Chan, dominic.chan@knowit.se

---

Mentimeter - gå till menti.com och ange koden: 8562 4187

---

# Vad är Docker?

- Containrar är som snabba och lättviktiga virtuella maskiner.
- Docker gör det enkelt att bygga och köra våra applikationer i containrar.

---

# Vad är K8s

- Kubernetes (helmsman) "Rorsman" 
- Orkestrerar container via container runtime t.ex. Docker
- scheduling | scaling | healing | updating

---

# Varför skall man lära sig Docker & Kubernetes?

- Intresset och användningen av Kubernetes har exploderat
- Teknikerna är nygamla - Docker (2013) och Kubernetes (2015)
- Stora företag och oragnisationer har migrerat till opensource lösningar för containerorkestrering t.ex. Google, Spotify, Tinder, Airbnb, The New York Times.

---

# Hur mycket används container teknologi?
- Gartner förutspår att 70% av alla organisationer kommer att köra containeriserade applikationer under 2023. Upp från cirka 30% (2019)
- Slashdata, analysfirma inom IT, har beräknat att cirka 5,6 miljoner utvecklare använder K8s globalt, cirka 30% av backendutvecklare
- Enlyft, analysföretag inom IT, cirka 76 000 företag använder K8s (https://enlyft.com/tech/products/kubernetes)
- Inom segmentet virtualiseringsteknologier så har 1. K8s (37%) 2. Red Hat Openshift (8%)

---

# Vad är Cloud Native?
- Cloud native är en utvecklingsapproach för att bygga, distribuera och hantera moderna applikationer i molnmiljöer. Moderna företag vill bygga mycket skalbara, flexibla och motståndskraftiga applikationer som man snabbt kan uppdatera för att möta kundernas krav. För att göra det använder de moderna verktyg och tekniker som i sig stöder applikationsutveckling på molninfrastruktur. Dessa molnbaserade teknologier stöder snabba och frekventa ändringar av applikationer utan att påverka tjänsteleveransen, vilket ger användare en innovativ konkurrensfördel.

---

# Cloud Native Computing Foundation (CNCF) - undergrupp till Linux Foundation
- https://landscape.cncf.io/

---

# Hur skall man lära sig Docker & Kubernetes?
- Hands on
- Börja med de grunläggande cli kommandona för Docker och K8s från terminal

---

# Hur skall man lära sig Docker & Kubernetes?
- Utvecklare/DevOps/Administratör/Säkerhet
- Hur skall man drifta en applikation på K8s?
- Hur skall man bygga upp ett K8s kluster?
- Hur skall man säkra upp ett K8s kluster?

---

# Certifieringar
- K8s and Cloud Native Associate (KCNA): grundläggande
- Certified K8s Application Developer (CKAD): utvecklare och DevOps
- Certified K8s Administrator: administratörer
- Certified K8s Security: säkerhet

- Openshift Learning paths - Red Hat Learning Path och Certifieringar

---

# Upplägget av denna kurs

- Fokus på CKAD certifieringen
- Praktiskt prov med uppgifter som man behöver lösa under 2 timmar. Open book, man har tillgång till viss dokumentation och källor
- Godkänt vid 66%
- https://github.com/cncf/curriculum
- Självstudier - labbar och övningar

---

# Till nästa genomgång

- Sätta upp labmiljö på AWS - Elastic Compute 2 Instanser
- Ladda hem SSH nyckel
- Följ instruktioner för att koppla upp mot EC2 instanserna
- Svara på kalenderinbjudan om ni skall närvara fysiskt eller digitalt senast tisdagar innan kl. 12
- Teamskanalen, https://teams.microsoft.com/l/channel/19%3ad55f5851ced7411896b6a631d3f7ad6c%40thread.skype/Cloud%2520native?groupId=ef514fd6-f38a-4be1-aa7c-6fed3c9d6a0d&tenantId=6735929c-9dbf-473b-9fc6-5fbdcd2c9fc4
- GitHub, https://github.com/domcha-knowit/docker-k8s-kurs-och-cert

---




