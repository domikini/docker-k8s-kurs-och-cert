# docker-k8s-kurs-och-cert
Certifieringsförberedande Intern utbildning på Knowit kring Docker och Kubernetes

Genomgångarna kommer att spelas in och laddas upp på gemensamt share.

Genomgång:
1. Introduktion - Kursinnehåll och upplägg. Certifieringsinfo - vilka certifieringar finns och vad är bra att tänka på.
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

# Ansluta till AWS instans (labbmiljö)

Testa att ansluta till en testserver:

- **Hostnamn: ec2-13-53-137-228.eu-north-1.compute.amazonaws.com**
- **Användarnamn: ubuntu**
- Autentisering med SSH-nyckel

## För MacOS och Linux:
Datorer med MacOS och Linux har terminalprogram förinstallerad och behöver därför inte installera något särskilt program.
aws-linux-demo.pem filen behöver sparas ned. Filen går att hitta på https://knowit.sharepoint.com/:f:/r/sites/O365-Development/Shared%20Documents/Cloud%20native/SSH-key?csf=1&web=1&e=qbYYiW. Spara ned aws-linux-demo.pem på ~/.ssh/ katalogen. Man kan behöva ändra rättighet på filen för att SSH inte skall klaga. Öppna terminalfönster och kör kommandot `sudo chmod 0600 ~/.ssh/aws-linux-demo.pem`.

1. Öppna en terminal
2. Kör kommandot ssh -i ~/.ssh/aws-linux-demo.pem ubuntu@ec2-13-53-137-228.eu-north-1.compute.amazonaws.com
3. Det kommer att visas en varning "Warning: Permanently added 'ec2-13-53-137-228.eu-north-1.compute.amazonaws.com' (ED25519) to the list of known hosts.". Svara "yes" och tryck Enter.
4. Du bör vara inloggad till servern och se bash prompten `ubuntu@ip-172-31-7-120:~$`.

## För Windows (Putty)

1. Datorer med Windows behöver ha Putty installerad. https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html
aws-linux-demo.ppk filen behöver sparas ned. Filen går att hitta på https://knowit.sharepoint.com/:f:/r/sites/O365-Development/Shared%20Documents/Cloud%20native/SSH-key?csf=1&web=1&e=qbYYiW. Spara ned aws-linux-demo.ppk på valfri plats på hårddisken.
2. Följ denna guide för att ladda den sparade aws-linux-demo.ppk nyckeln till Pageant agenten. https://www.digitalocean.com/community/tutorials/how-to-use-pageant-to-streamline-ssh-key-authentication-with-putty
3. Följ sedan guiden för att ansluta till servern, https://mediatemple.net/community/products/dv/204404604/connect-to-ssh-using-putty-(windows). Som "Host name" använd **ec2-13-53-137-228.eu-north-1.compute.amazonaws.com** och "login as:" **ubuntu**.
4. Det kommer visas en varning första gången du ansluter till servern. Tryck Ja på varningen.
5. Du bör vara inloggad till servern och se bash prompten `ubuntu@ip-172-31-7-120:~$`.

---

ec2-16-171-68-15.eu-north-1.compute.amazonaws.com
ec2-13-53-186-123.eu-north-1.compute.amazonaws.com
ec2-13-53-201-230.eu-north-1.compute.amazonaws.com
ec2-16-16-100-84.eu-north-1.compute.amazonaws.com
ec2-16-16-195-101.eu-north-1.compute.amazonaws.com
ec2-16-16-195-50.eu-north-1.compute.amazonaws.com
ec2-16-16-124-175.eu-north-1.compute.amazonaws.com
ec2-16-170-7-196.eu-north-1.compute.amazonaws.com
ec2-16-16-80-23.eu-north-1.compute.amazonaws.com
ec2-16-16-194-190.eu-north-1.compute.amazonaws.com
ec2-13-50-105-81.eu-north-1.compute.amazonaws.com
ec2-13-50-252-3.eu-north-1.compute.amazonaws.com
ec2-13-53-234-246.eu-north-1.compute.amazonaws.com
ec2-16-16-97-35.eu-north-1.compute.amazonaws.com
ec2-16-16-79-214.eu-north-1.compute.amazonaws.com
ec2-16-16-216-6.eu-north-1.compute.amazonaws.com
ec2-16-171-53-230.eu-north-1.compute.amazonaws.com
ec2-13-50-237-154.eu-north-1.compute.amazonaws.com
ec2-16-16-78-163.eu-north-1.compute.amazonaws.com
ec2-16-16-170-189.eu-north-1.compute.amazonaws.com
ec2-16-16-198-255.eu-north-1.compute.amazonaws.com
ec2-16-16-79-5.eu-north-1.compute.amazonaws.com
ec2-13-48-129-19.eu-north-1.compute.amazonaws.com
ec2-13-49-41-202.eu-north-1.compute.amazonaws.com
ec2-16-171-70-9.eu-north-1.compute.amazonaws.com
ec2-16-16-172-177.eu-north-1.compute.amazonaws.com
ec2-16-171-68-28.eu-north-1.compute.amazonaws.com
ec2-16-170-210-45.eu-north-1.compute.amazonaws.com
ec2-16-16-143-121.eu-north-1.compute.amazonaws.com
ec2-16-16-75-62.eu-north-1.compute.amazonaws.com
ec2-13-50-240-217.eu-north-1.compute.amazonaws.com
ec2-16-171-45-112.eu-north-1.compute.amazonaws.com
ec2-16-16-233-58.eu-north-1.compute.amazonaws.com
ec2-16-16-156-19.eu-north-1.compute.amazonaws.com
ec2-16-16-138-171.eu-north-1.compute.amazonaws.com
ec2-13-53-46-172.eu-north-1.compute.amazonaws.com
ec2-16-16-139-31.eu-north-1.compute.amazonaws.com
ec2-16-171-56-180.eu-north-1.compute.amazonaws.com
ec2-16-16-208-203.eu-north-1.compute.amazonaws.com
ec2-13-48-68-253.eu-north-1.compute.amazonaws.com
ec2-16-16-254-227.eu-north-1.compute.amazonaws.com
ec2-13-49-41-235.eu-north-1.compute.amazonaws.com
ec2-16-16-100-177.eu-north-1.compute.amazonaws.com
ec2-16-16-254-243.eu-north-1.compute.amazonaws.com
ec2-13-51-250-100.eu-north-1.compute.amazonaws.com

___
# Grundläggande Bash kommandon att öva på:

## Navigering
- cd
- pwd
- ls
- clear
- echo
- history

---

## Dokumentation
- man
- --help

---

## Filhantering
- touch
- cat
- less
- more
- mv
- mkdir
- rm
- vim/vi
- nano

---

## Search
- grep
- find

---

## System
- logger
- top
- kill
- sudo
- apt update, apt upgrade, apt install
- ping
- exit

---

## Behörighet
- chown
- chmod

---

# Övningar:
1. Skapa ny mapp "Cookies" i hemkatalogen. Skapa ytterligare en mapp "Cakes" i hemkatalogen.
2. Gå till mappen Cookies och skapa en textfil som får heta "chocolate-cookie.md" i valfri editor. 
3. Gå till mappen Cakes och skapa en textfil som får heta "princess-cake.md" i valfri editor.
4. Lägg in lite text i princess-cake.md filen.
5. Ändra namnet på princess-cake.md till princess-cake.txt
6. Flytta filen pricess-cake.txt till "Cookies" i hemkatalogen.
7. Ta bort princess-cake.txt filen från "Cookies" i hemkatalogen.
8. Kopiera chocolate-cookie.md filen från "Cookies" till "Cakes" katalogen.
9. Kontrollera att svd.se domänen är uppe och är aktiv.
10. Kör kommandot `logger "smurf"`. Detta kommer att skapa ett loggmedelande i systemlogg som finns i /var/log katalogen. I vilken av loggfilerna där hamnade "smurf" meddelandet? 

---

Referenser:
- https://www.educative.io/blog/bash-shell-command-cheat-sheet
- https://algodaily.com/lessons/bash-commands-cheat-sheet1
