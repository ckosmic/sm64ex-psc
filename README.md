# sm64ex-psc
Fork of [sm64pc/sm64ex](https://github.com/sm64pc/sm64ex) ported to the PlayStation Classic. 

Feel free to report bugs and contribute, but remember, there must be **no upload of any copyrighted asset**. 
Run `./extract_assets.py --clean && make clean` or `make distclean` to remove ROM-originated content.

## Building
Linux / WSL (Ubuntu)
```
sudo apt-get update && \
sudo apt-get install -y python3 build-essential unzip

sudo wget https://github.com/autobleem/PSC-CrossCompile-Toolchain/archive/refs/heads/master.zip -O PSC-CrossCompile.zip && \
sudo unzip PSC-CrossCompile.zip && \
sudo rm PSC-CrossCompile.zip && \
sudo mv PSC-CrossCompile-Toolchain-master PSC-CrossCompile-Toolchain

git clone https://github.com/ckosmic/sm64ex-psc.git

sudo chmod -R 775 sm64ex-psc
cd sm64ex-psc

# If using WSL, go and copy the baserom to C:\temp (create that directory in Windows Explorer if needed)
cp /mnt/c/temp/baserom.us.z64 ./

sudo chmod 644 ./baserom.us.z64

sudo bash build_psc.sh
```

After running these commands, navigate to `project_eris/etc/project_eris/SUP/launchers` on your PlayStation Classic's flash drive or through SFTP, and create a folder called `sm64`.  Copy every file from `build/us_pc` into this folder.

**Make sure you have MXE first before attempting to compile for Windows on Linux and WSL.**

Check out the [sm64ex wiki](https://github.com/sm64pc/sm64ex/wiki) for more information on building.
