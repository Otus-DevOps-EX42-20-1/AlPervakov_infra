# AlPervakov_infra
AlPervakov Infra repository

bastion_IP = 35.187.2.122
someinternalhost_IP = 10.132.0.3

# Подключение из консоли по команде `ssh someinternalhost`
создать конфигурационный файл ~/.ssh/config со следующим содержимым:

Host bastion
    Hostname 35.187.2.122
    User alpervakov
    IdentityFile /home/alpervakov/.ssh/alpervakov

Host someinternalhost
    Hostname 10.132.0.3
    User alpervakov
    ProxyCommand ssh -W %h:%p bastion
    IdentityFile /home/alpervakov/.ssh/alpervakov
