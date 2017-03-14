Jordan Hudgens:
https://www.udemy.com/introduction-typescript-development/learn/v4/overview
====================== 1: Install Homebrew ==================
ref: https://community.c9.io/t/installing-linuxbrew/1899
$ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"

timchen7:~ (master) $ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
==> This script will install:
/home/ubuntu/.linuxbrew/bin/brew
/home/ubuntu/.linuxbrew/Library/...
/home/ubuntu/.linuxbrew/share/man/man1/brew.1

Press RETURN to continue or any other key to abort
==> Downloading and installing Homebrew...
remote: Counting objects: 353405, done.
remote: Total 353405 (delta 0), reused 0 (delta 0), pack-reused 353405
Receiving objects: 100% (353405/353405), 67.84 MiB | 11.48 MiB/s, done.
Resolving deltas: 100% (267197/267197), done.
From https://github.com/Homebrew/linuxbrew
 * [new branch]            master     -> origin/master
HEAD is now at eec5059563 Merge branch homebrew/master into linuxbrew/master
Warning: /home/ubuntu/.linuxbrew/bin is not in your PATH.
==> Installation successful!
==> Next steps
Install the Linuxbrew dependencies:

Debian, Ubuntu, etc.:
  `sudo apt-get install build-essential`

See http://brew.sh/linuxbrew/#dependencies for more information.

Then edit your .profile file to allow running of the brew command. 
You can get to .profile from the terminal or by choosing to show the 
Home directory in your favorites, then double click .profile 
to open it.
Paste the following lines into the file and save it.

# Until LinuxBrew is fixed, the following is required.
# See: https://github.com/Homebrew/linuxbrew/issues/47
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/lib64/pkgconfig:/usr/lib64/pkgconfig:/usr/lib/pkgconfig:/usr/lib/x86_64-linux-gnu/pkgconfig:/usr/lib64/pkgconfig:/usr/share/pkgconfig:$PKG_CONFIG_PATH
## Setup linux brew
export LINUXBREWHOME=$HOME/.linuxbrew
export PATH=$LINUXBREWHOME/bin:$PATH
export MANPATH=$LINUXBREWHOME/man:$MANPATH
export PKG_CONFIG_PATH=$LINUXBREWHOME/lib64/pkgconfig:$LINUXBREWHOME/lib/pkgconfig:$PKG_CONFIG_PATH
export LD_LIBRARY_PATH=$LINUXBREWHOME/lib64:$LINUXBREWHOME/lib:$LD_LIBRARY_PATH

Now open up another terminal (or restart the current terminal) and 
run which brew and you'll see:
/home/ubuntu/.linuxbrew/bin/brew

Run `brew doctor` before you install anything
Run `brew help` to get started

====================== 2: install node.js,npm =========================
https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-an-ubuntu-14-04-server
$sudo apt-get update
$sudo apt-get install nodejs
sudo apt-get install npm
timchen7:~ (master) $ node -v
v4.7.3
timchen7:~ (master) $ npm -v
2.15.11
============== 3. install Typescript ======================
timchen7:~ (master) $ sudo npm install -g typescript
-see-> typescript@2.2.1 /home/ubuntu/.nvm/versions/node/v4.7.3/lib/node_modules/typescript
================ 4. run Typescript =======================
edit tsconfig.json:---->
{
  "compilerOptions": {
    "sourceMap": true
  },
  "files": [
    "ts1.ts"
    ]
}  
edit ts1.ts:---->
function hi() {
  console.log("Hi ts");
}
hi()
$tsc
-see-> ts1.js.map generated
$node ts1
-see-> Hi ts


