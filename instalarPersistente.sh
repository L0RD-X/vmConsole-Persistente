#!/usr/bin/env bash
# By L0RD-X
# 22/07/22
#___________________|
# Qualquer possível erro consulte estes links:
# Link do Github oficial: https://github.com/sylirre/vmConsole/wiki/03-Installing-OS-on-Disk
# Link do video tutorial: https://youtube.com/watch?v=UkuLASG2JDQ
# ps: criei isso pra adiantar o processo de instalação básico do alpine linux no vmconsole(app da playstore), não sei se funciona pra pc, mas no cll foi ok testei 3 vezes, demora muito mas dá

echo -e '''
\e[01;34m Inicializando...

Dica:processo de instalação se permanecer nessa tela irá mais rápido.

caso apareça alguma mensagem pedindo y/n digite y e dê enter \n\n \033[01;0m
'''

ROOT_SIZE=4096 # Tamanho do armazenamento 

setup-disk -m sys -s 0 /dev/sda

mount /dev/sda2 /mnt
mount /dev/sda1 /mnt/boot

sleep 1

rm -rf /mnt/boot/extlinux.conf #Remove extlinux e add

mv extlinux.conf /mnt/boot/ 

rm -rf /mnt/etc/update-extlinux.conf
#Remove e Cria o update
mv update-extlinux.conf /mnt/etc/

rm -rf /mnt/etc/fstab

#Remove e Recria o fstab
mv fastab /mnt/etc/


chattr +i /mnt/boot/extlinux.conf
# Atualiza os arquivos "editados" e reinicia tudo
reset 

echo -e "\033[01;32m Tudo pronto, \n agora a vm reiniciará com nome de [Alpine Linux] na tela de boot \e[01;00m \n \n"
sleep 2
reboot
