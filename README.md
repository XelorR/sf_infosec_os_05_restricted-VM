# Creating VM with requirements

Homework for infosec courses

## The Task

Разверните виртуальную машину на любом дистрибутиве, основанном на Debian (Ubuntu, Debian…).

### Выполните настройку по чек-листу:

1. Установить SSH-сервер и настроить удалённое подключение по ключам, вместо пароля.
2. Создать нового пользователя с домашней директорией и выдать ему возможность запускать следующие утилиты без требования пароля:

- /sbin/route, /sbin/iptables, /usr/bin/nmap, /usr/sbin/hping3
- usr/bin/systemctl
- sbin/ifup, /sbin/ifdown

3. Установить минимальную длину пароля для пользователя в 8 символов.
4. Установить на сервер пакеты Java.
5. Настроить автоматическое сканирование антивирусом всей ОС каждый понедельник в 4 утра. При этом раз в месяц должно происходить обновление базы данных антивирусов.
6. Настроить файервол на блокирование всего входящего и выходящего трафика.

### УСЛОВИЯ РЕАЛИЗАЦИИ:

По каждому пункту нужно предоставить:

- Команду / набор команд / текст, которыми вы пользовались для выполнения задания.
- Скриншот результата работы / получившегося файла.
 

### ДОПОЛНИТЕЛЬНАЯ ИНФОРМАЦИЯ:
- По пункту 1 предоставьте всё содержимое конфигурационного файла sshd и содержимое файла authorized_keys.
- По пункту 2 предоставьте вывод команды ls в директории home, вывод файла passwd, содержимое файла sudoers.
- По пункту 3 самостоятельно найдите информацию по установке минимального пароля. В качестве ответа предоставьте содержимое файла common-passwords.
- По пункту 4 предоставьте результат успешной установки Java (последняя доступная версия JRE).
- По пункту 5 предоставьте тексты задач cron, содержимое файла crontab (скрипт Bash — пожеланию)
- По пункту 6 предоставьте вывод всех цепочек и правил iptables.
