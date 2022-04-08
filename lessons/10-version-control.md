# English
## Lesson 10 - Version Control

Have you ever had files with names like `report.txt`, `report2.txt`, `report-final.txt` and `report-really-final.txt` in the same folder? Then version
control is for you!
It allows you to manage different versions of the same file in a coordinated
fashion. Travel back in time to restore an old version of a file or check out a
version from a colleague.

### Git

One of the most common version control software in use is called `Git` and
that's what we'll be looking at.

#### Oh my Git!

If you would like to get a guided intro to Git, please check out the educational
game [Oh my Git!](https://ohmygit.org).

#### Basic use cases

To bring the current directory under version control use `git init`. This will
tell git to create a new repository.

In case you would like to contribute to an existing repository use
`git clone REPOSITORY` where `REPOSITORY` is a reference, e.g. `https://github.com/Garllon/ruby-mentorship.git`, or `git@github.com:Garllon/ruby-mentorship.git`.

The commands below will add to your current `branch`. You can change
that by running `git checkout BRANCHNAME` before making commits, where
`BRANCHNAME` is the name of an existing branch. To create a new branch use
`git checkout -b BRANCHNAME`. It is common to make changes in a new branch
gradually, i.e. commit by commit and then to add all of them to a main branch
afterwards.

Feel free to add/remove or edit files as you see fit. Once you would like to
persist a current state use `git add FILENAME` to mark the current state of the
file named `FILENAME` for persistence. You can repeat the command with different
files, multiple files at once or even use `git add .` to mark all changes.

Once you have marked your changes use `git commit` to persist them. Git will
then ask you to provide a message. A common format is to start with a short
(<50 characters) summary in the first line, then an empty line and then a more
elaborate description afterwards. Keep in mind that the exact changes as well as
when they have been made will be tracked by git. Instead it is advisable to
focus on what isn't visible, e.g. why the changes have been made.
Commits will then allow you to restore past states of your files.

Assuming you're working on a copy of an existing repository you can upload your
changes with `git push`.

# Deutsch
## Lesson 10 - Versionskontrolle

Ist es dir auch schon einmal passiert, dass du mehrere Versionen einer Datei hattest. Zum Beispiel:
`report.txt`, `report2.txt`, `report-final.txt` und `report-really-final.txt`.

Dann ist Versionskontrolle etwas für dich.
Es erlaubt dir verschiedene Versionen der selben Datei mit System zu verwalten. Du kannst dir alte
Versionen anschauen oder die neuste Version von einem Kollegen.

### Git

Eines der bekanntesten Versionskontrollesysteme nennt sich `Git` und darauf schauen wir auch.

#### Oh my Git!

Mit `Oh my Git!` gibt es ein wunderbares kleines Programm zum spielerischen Lernen von Git.
[Oh my Git!](https://ohmygit.org).

#### Grundlegende Befehle

Mit `git init` bringt man den aktuellen Ordner, und alle Dateien oder Unterordner, unter
Versionskontrolle.

Wenn du etwas zu einem bestehen Repository beitragen möchtest, kannst du mit `git clone REPOSITORY`, wobei `REPOSITORY` eine Referenz ist: Zum Beispiel: `https://github.com/Garllon/ruby-mentorship.git`, Ordner
`git@github.com:Garllon/ruby-mentorship.git`.

Die nachfolgenden Befehle fügen Änderungen zum aktuellen `branch` hinzu. Du kannst den `branch` auch
wechseln mit Hilfe des Befehls: `git checkout BRANCHNAME`.

The commands below will add to your current `branch`. You can change
that by running `git checkout BRANCHNAME` before making commits, where
`BRANCHNAME` is the name of an existing branch. To create a new branch use
`git checkout -b BRANCHNAME`. It is common to make changes in a new branch
gradually, i.e. commit by commit and then to add all of them to a main branch
afterwards.
