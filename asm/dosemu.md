# dosemu2 setup for Wizardry 7

This project uses dosemu2 (instead of DOSBox) for development and debugging.
Below are the build/install steps that worked on Ubuntu 26.04.

## Prerequisites — PPAs

```bash
sudo add-apt-repository ppa:dosemu2/ppa
sudo add-apt-repository ppa:stsp-0/dj64
sudo apt update
```

## Build dependencies

```bash
sudo apt install build-essential git meson pkg-config cmake autoconf \
                 libseccomp-dev dj64-dev dj64-host djdev64-dev djstub
```

## Build dosemu2, fdpp, comcom64

```bash
# 1. Set up dosemu2 home directory & command.com
mkdir -p ~/.dosemu/drive_c
git clone https://github.com/dosemu2/comcom64.git
cd comcom64
make fetch
cp 32/comcom32.exe ~/.dosemu/drive_c/command.com
cd ..

# 2. Build fdpp (FreeDOS kernel for dosemu2)
git clone https://github.com/dosemu2/fdpp.git
cd fdpp
./configure.meson
ninja -C build
sudo ninja -C build install
cd ..

# 3. Build dosemu2
git clone https://github.com/dosemu2/dosemu2.git
cd dosemu2
./default-configure
make -j "$(nproc)"
sudo make install
sudo ldconfig
cd ..
```

## Build nasm-segelf & djstub

### nasm-segelf

```bash
git clone https://github.com/stsp/nasm-segelf.git
cd nasm-segelf
sh autogen.sh
./configure --program-prefix=segelf-
make -j "$(nproc)"
sudo make install
```

The `(segelf)` in `nasem-segelf --version` is just a fork identifier.
The actual `-f segelf` output format is **not yet compiled in**; this is noted
for future work.

### djstub

The `djstub` package from `ppa:stsp-0/dj64` provides `djlink`, `djstrip`,
`djstubify`, and `djelfextract`. Install the pre-built package:

```bash
sudo apt install djstub
```

(Building from source requires `smallerc` for the mini stub cross-compiler.
The `make mini` step depends on the `smlrcc` compiler being on `PATH`.
If needed: `sudo apt install smallerc` then `make && sudo make install`.)

## Verify

```bash
dosemu --version
which djlink
which nasm-segelf
```

## Running the game

```bash
make -C asm run
```

This mounts `build_out/` as a DOS drive and launches `DS.EXE` under dosemu2.
