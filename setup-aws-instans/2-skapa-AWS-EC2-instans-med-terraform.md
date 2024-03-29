# Skapa AWS EC2 instans med terraform

> :heavy_exclamation_mark: **Minimum requirement**: En Kubernetes nod har minimum krav på 2 vCPU och 2 GiB RAM minne. Vi kommer vilja spinna upp minst tre noder. Så om man vill spinna upp egen EC2 instans är det rekommenderat att köra minst en t3.large instans på AWS för att ha tillräckligt med minnesresurs för att göra labarna.

> :heavy_exclamation_mark: **Behörighet till din AWS användare**: Du behöver lägga till din användare i en grupp som ger dig tillräckligt med behörighet för att skapa EC2 instans. Använd AWS Console och gå till IAM -> Users -> <din-användare>. Gå till fliken Groups -> Add user to groups. Markera "Admin" och tryck på "Add user to group(s)".

## Förklaring till skriptfilerna:
- **kubernetes.tf** - Är konfigurationsfil för Terraform. Terraform CLI kommer att läsa från den här filen när man kör `terraform apply`.
- **provision.sh** - Är ett bashskript och är en bootstrap fil som laddas upp till den nya EC2 instansen och körs automatiskt när EC2 startar första gången. Skriptfilen innehåller kommadon för att installera nödvändig cli program inkl. git, vim, unzip, golang, docker och klonar även docker-k8s-kurs-och-cert repot till servern.
- **minikube.sh** - Är ett bashskript som körs manuellt för att installera minikube-klustret.

## Instruktioner:
1. Installera AWS CLI. Följ installationsinstruktioner som gäller för ditt OS, https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
2. För att kunna använda AWS CLI, skapa en access key och secret i AWS Sandbox, https://knowit-sandboxes.awsapps.com/start#/. Gå till Identity and Access Management (IAM) och lägg till (Add users). Skapa en användare under ditt namn. Tryck på den skapade användaren och gå till fliken Security Credentials. Scrolla ned och tryck Create access key för att skapa en. Välj Command Line Interface (CLI), markera och godkänn "I understand the above recommendation..." och tryck på Next. Ange en valfri beskrivning för access nyckeln i nästa steg och tryck på Next. Anteckna access key och secret, spara till exempel i en lokal textfil.
3. För att ansluta AWS CLI, kör kommandot `aws configure` och följ instruktionerna där. Ange access key och secret som du sparat i steget innan. På Default region name, tryck Enter och på Default output format, tryck Enter.
4. Installera Terraform CLI. Följ installationsinstruktioner som gäller för ditt OS, https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
5. Gå till mappen setup-aws-instans i repot https://github.com/domcha-knowit/docker-k8s-kurs-och-cert. Editera filen kubernetes.tf, ändra alla förekomster av "\<unikt-namn\>" och ange valfritt unikt namn. Spara dina ändringar i kubernetes.tf filen. Kör kommandot `terraform init` och sedan kommandot `terraform apply` för att starta en instans. Svara yes vid nästa steg.
6. Kör kommandot `aws ec2 describe-instances --query "Reservations[*].Instances[*].{PublicIP:PublicDnsName,Type:InstanceType,Name:Tags[?Key=='Name']|[0].Value,Status:State.Name}" --filters "Name=instance-state-name,Values=running" --output table > output.txt` för att lista alla EC2 instanser. Outputen sparas i filen output.txt. Öppna den och ta reda på vilken instans och tillhörande hostnamn som du har skapat.
7. SSH:a till instansen med kommandot, `ssh -i ~/.ssh/aws-linux-demo.pem ubuntu@<hostnamn-till-din-EC2-instans>`
8. För att ta ned AWS instansen, kör kommandot `terraform destroy`. Svara yes vid nästa steg.
