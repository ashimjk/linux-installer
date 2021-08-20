# Linux Installer


## Backup
- Cleanup `make cleanup`
- Run `make backup`


## Steps for Setup
- Step 1 - `make install-1`

- Restart OS

- Step 2 - `make install-2`

- Restart OS

- Step 3 - `make restore`

- Step 4 - [Manual Installation](./start-setup/step-4-manual.md)

- Step 5 - [Manual Installation](./start-setup/step-5-manual.md)


## Note
- For sharing files with VirtualBox
```
sudo gpasswd -a $USER vboxsf
ln -s /media/sf_linux-installer /home/ashimjkvm/linux-installer
ln -s /media/sf_testing /home/ashimjkvm/testing
```
