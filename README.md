# VladimirEskin_infra
VladimirEskin Infra repository
bastion_IP=35.205.248.65
someinternalhost_IP=10.132.0.2
Подключение к хосту внутренней сети в оду команду: sudo ssh -J vesk@35.205.248.65 vesk@10.132.0.3
Вариант подключения к хосту во внутренней сети с помощю команды "ssh someinternalhost":
Пробрасываем порты с нашего ПК через bastion во внутреннюю сеть: ssh -L 2222:10.132.0.2:2222 username@35.205.248.65, дальше можно подключаться к внутренним хостам через данный тунель.
testapp_IP = 35.246.94.44
testapp_port = 9292
Создан шаблон packer(ubuntu16.json) для создания образа reddit(+ruby+mongodb)
