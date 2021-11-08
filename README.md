# unix-gpg-file-crypter
Very simple script to encrypt/decrypt files in any of your unix envs.

"gpg" should be installed by default in your linux, but if not:

Ubuntu/Debian/Kali
> $ sudo apt install gnupg

Fedora/CentOS
> $ sudo yum install gnupg

In addition, as I specified in commentaries, make sure to have the right permissions to run the script:
> sudo chmod +x menuscript.sh

Finally, run the script (the file/s to encrypt/decrypt *must be* in the same folder where the scripts are located -src-):

> $ sudo ./encryptor.sh
