# Para que serve
Se chegou aqui, é de se supor que esteja tentando usar o vmConsole e acaba de perceber que toda vez que fecha o aplicativo ele não reinicia 
e você perde todo o progresso que havia feito, mas pensando nisso existem processos que fixarão a sua VM(máquina virtual), só que é tanta
coisa que resolvi criar um script que adianta todo esse processo basta você digitar estes comandos e aguardar alguns minutos que tudo estará resolvido.<br>
>Script feito para a instalação persistente do alpine linux no [vmConsole](https://play.google.com/store/apps/details?id=sylirre.vmconsole) <br>
>só pra adiantar os passos.
## Comandos
No Alpine Linux em vez de ```apt install```
se usa o comando ``` apk add ``` 
na instalação de qualquer coisa que usaría em outro linux.<br><br>
Use ``` apk add git ``` 
para instalar o git.
 <br><sup> vale resaltar que é necessário a versão em casos como python por exemplo</sup>
<br><br>
Para rodar você pode usar
```bash instalarPersistente ``` <br>
Caso preferir use o ``` chmod +x instalarPersistente && ./instalarPersistente ``` 

### Adendos
Me baseei em 2 lugares no
[Github](https://github.com/sylirre/vmConsole/wiki/03-Installing-OS-on-Disk) e o
[Video](https://youtube.com/watch?v=UkuLASG2JDQ) que o desenvolvedor do [vmConsole](https://play.google.com/store/apps/details?id=sylirre.vmconsole) enviou
