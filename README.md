aurcher
=======

`aurcher` is a tool to build an Arch aur package inside a Docker container.
This is useful to keep your system clean from build deps, and to protect your system from malicious aur scripts.
It is also useful to build packages - e.g. `binaryninja-personal` - which require a binary distribution place into the build directory to succesfully build.

## Build
```
git clone --depth=1 https://github.com/pspace/aurcher.git
cd aurcher
docker build . -t aurcher
```

## Usage
```
cd ~ # or anywhere else
mkdir build
cd build 
git clone --depth=1 https://aur.archlinux.org/$PACKAGE.git .
docker run  -v `pwd`/build:/build aurcher
# an arch package should bave been built inside the build directory
```
