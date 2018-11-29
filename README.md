aurcher
=======

`aurcher` is a tool to build an Arch aur package inside a Docker container.
This is useful to keep your system clean from build deps, and to protect your system from malicious aur scripts.

## Build
```bash
git clone --depth=1 https://github.com/pspace/aurcher.git 
cd aurcher
docker build . -t aurcher # repeat this whenever needed - e.g. weekly, or when the build process fails due to unavailable build dependencies
```

## Usage
```bash
/PATH/TO/aurcher <package-name> <dst dir for prepared package .tar.xz>
#Expected result: a ready-to-install arch package in the destination folder

#install package with
sudo pacman -U <dst dir>/<freshly created>.tar.xz
```
