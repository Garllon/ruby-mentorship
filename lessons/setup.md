# Setup

## English

### For MacOS and Windows User

1. Install (Docker Desktop)[https://www.docker.com/products/docker-desktop] if your operating system is MacOS or Windows.
2. Set up a new directory for your coding journey (remember it's name and where it's located)
3. Execute `docker pull garllon/mentorship` on a console (Windows: Cmd or PowerShell; MacOS: Terminal)
4. Open `Docker for Desktop` by clicking on this icon ![Config Code Folder](/screenshots/DockerIcon.png).
    - MacOS: It is in the top right corner.
    - Windows: It is in the bottom right corner.
5. Configure your new directory from step 2 in Docker Desktop
    1. First click on the gear
    2. Then Resources and File Sharing
    3. Click the `⊕` Button
    
    ![Config Code Folder](/screenshots/ConfigDockerDesktopFileSharing.png)
    
6. Spin up a new container
    Click on `Run`.

    ![Config Code Folder](/screenshots/CreateContainerInit.png)

    1. Define a name you like
    2. Pick the directory you created in Step 2
    3. Define a container_path like `/<name>`
    
    ![Config Code Folder](/screenshots/CreateContainerSetup.png)
    
7. Open a terminal by clicking the container

    ![Config Code Folder](/screenshots/RunTerminal.png)

8. You are ready to go

    ![Config Code Folder](/screenshots/ReadyToGo.png)
    
### For Linux User

Run
```shell
docker pull garllon/mentorship
```
and then run
```shell
docker run -it garllon/mentorship sh
```
to start the container.

Maybe you need to add `sudo` in front of the commands to run it with sudo permissions.

## Deutsch

### Für MacOS und Windows Benutzer

1. Installiere (Docker Desktop)[https://www.docker.com/products/docker-desktop], wenn due MacOS oder Windows benutzt. 
2. Erstelle einen neuen Ordner für deine 'Coding' Reise. (Erinnerung: Bitte merken wie er heißt und wo er ist ;) )
3. Führe `docker pull garllon/mentorship` auf einer Konsole aus. (Windows: Cmd oder PowerShell; MacOS: Terminal)
4. Öffne `Docker Desktop` durch Doppelklick auf das Icon ![Config Code Folder](/screenshots/DockerIcon.png).
    - MacOS: Es befindet sich in der oberen rechten Ecke.
    - Windows: Es befindet sich in der unteren rechten Ecke.
5. Konfiguriere deinen neuen Ordner aus Schritt 2 in `Docker Desktop`
    1. Als erstes klicke auf das Zahnradsymbol
    2. Dann auf `Ressources` und `File Sharing`
    3. Klicke auf den `⊕` Button
    
    ![Config Code Folder](/screenshots/ConfigDockerDesktopFileSharing.png)
    
6. Einen neuen Container erstellen
    Klick auf `Run`

    ![Config Code Folder](/screenshots/CreateContainerInit.png)

    1. Wählen einen Namen den du magst
    2. Wähle den Ordner aus Schritt 2 aus
    3. Definiere einen Containerpfad(container_path) wie `/<name>`
    
    ![Config Code Folder](/screenshots/CreateContainerSetup.png)
    
7. Öffne ein Terminal in dem du auf den Container klickst

    ![Config Code Folder](/screenshots/RunTerminal.png)

8. Wir sind fertig

    ![Config Code Folder](/screenshots/ReadyToGo.png)
    
### For Linux User

Führe den folgenden Befehl in einem Terminal aus:
```shell
docker pull garllon/mentorship
```
danach den folgenden Befehl
```shell
docker run -it garllon/mentorship sh
```
um den Containe zu starten.

Möglicherweise musst du ein `sudo` vor deinen Befehl packen, damit es mit den `sudo` berechtigungen läuft.
