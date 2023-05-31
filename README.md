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

| Namn         | AWS hostname                                       |
|--------------|----------------------------------------------------|
| Adrian       | ec2-16-16-251-61.eu-north-1.compute.amazonaws.com  |
| Ahmed        | ec2-13-48-196-83.eu-north-1.compute.amazonaws.com  |
| Albin        | ec2-13-50-246-92.eu-north-1.compute.amazonaws.com  |
| Anders       | ec2-16-16-97-240.eu-north-1.compute.amazonaws.com  |
| Axel         | ec2-16-16-205-83.eu-north-1.compute.amazonaws.com  |
| Azeb         | ec2-13-50-242-239.eu-north-1.compute.amazonaws.com |
| Aziz         | ec2-13-48-78-183.eu-north-1.compute.amazonaws.com  |
| Björn        | ec2-13-50-225-234.eu-north-1.compute.amazonaws.com |
| Carl         | ec2-16-16-91-7.eu-north-1.compute.amazonaws.com    |
| Christoffer  | ec2-13-53-135-48.eu-north-1.compute.amazonaws.com  |
| Daniel       | ec2-13-49-159-161.eu-north-1.compute.amazonaws.com |
| Eddy         | ec2-16-16-90-208.eu-north-1.compute.amazonaws.com  |
| Fiorella     | ec2-16-16-100-171.eu-north-1.compute.amazonaws.com |
| Fredrik      | ec2-13-48-129-215.eu-north-1.compute.amazonaws.com |
| Gunnar C     | ec2-16-171-70-212.eu-north-1.compute.amazonaws.com |
| Gunnar N     | ec2-16-16-172-195.eu-north-1.compute.amazonaws.com |
| Hassan       | ec2-13-48-132-153.eu-north-1.compute.amazonaws.com |
| Johan        | ec2-16-16-200-221.eu-north-1.compute.amazonaws.com |
| Kate         | ec2-13-49-127-236.eu-north-1.compute.amazonaws.com |
| Konstantinos | ec2-13-50-105-3.eu-north-1.compute.amazonaws.com   |
| Linn H       | ec2-16-170-164-34.eu-north-1.compute.amazonaws.com |
| Linn M       | ec2-13-50-108-218.eu-north-1.compute.amazonaws.com |
| Louise       | ec2-16-16-144-235.eu-north-1.compute.amazonaws.com |
| Magnus       | ec2-13-53-139-165.eu-north-1.compute.amazonaws.com |
| Marcus K     | ec2-13-50-236-163.eu-north-1.compute.amazonaws.com |
| Marcus O     | ec2-13-53-139-210.eu-north-1.compute.amazonaws.com |
| Marcus W     | ec2-16-16-127-244.eu-north-1.compute.amazonaws.com |
| Martin H     | ec2-13-51-254-68.eu-north-1.compute.amazonaws.com  |
| Martin S     | ec2-16-16-70-93.eu-north-1.compute.amazonaws.com   |
| Masih        | ec2-13-50-239-152.eu-north-1.compute.amazonaws.com |
| Mikael       | ec2-16-16-160-216.eu-north-1.compute.amazonaws.com |
| Mohamed      | ec2-13-50-246-36.eu-north-1.compute.amazonaws.com  |
| Niklas       | ec2-16-16-251-150.eu-north-1.compute.amazonaws.com |
| Per          | ec2-16-16-146-41.eu-north-1.compute.amazonaws.com  |
| Robin        | ec2-13-50-245-1.eu-north-1.compute.amazonaws.com   |
| Stefan       | ec2-16-16-200-91.eu-north-1.compute.amazonaws.com  |
| Suleiman     | ec2-13-48-137-205.eu-north-1.compute.amazonaws.com |
| Torsten      | ec2-13-50-246-215.eu-north-1.compute.amazonaws.com |
| Wille        | ec2-13-50-243-25.eu-north-1.compute.amazonaws.com  |
| Zacharias    | ec2-13-48-204-106.eu-north-1.compute.amazonaws.com |
| Extra 1      | ec2-16-16-210-152.eu-north-1.compute.amazonaws.com |
| Extra 2      | ec2-16-16-160-53.eu-north-1.compute.amazonaws.com  |
| Extra 3      | ec2-16-170-167-55.eu-north-1.compute.amazonaws.com |
| Extra 4      | ec2-13-53-186-231.eu-north-1.compute.amazonaws.com |
| Extra 5      | ec2-16-16-126-65.eu-north-1.compute.amazonaws.com  |

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
