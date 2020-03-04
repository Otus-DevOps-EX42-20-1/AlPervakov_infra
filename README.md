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


testapp_IP = 34.90.69.109
testapp_port = 9292

#Packer
Созданы конфигурационные файлы для создания образа VM

#Terraform
Созданы конфигурационные файлы для поднятия машин в GCP

#Ansible
Создан inventory файл с группами хостов для подключения к машинам в GCP
Создан playbook clone.yml для скачивания приложения с github в рабочую диррекорию на VM appserver в GCP
