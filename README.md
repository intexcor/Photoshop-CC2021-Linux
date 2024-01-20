# Photoshop-CC2021-Linux
ОТКАЗ ОТ ОТВЕТСТВЕННОСТИ: Пожалуйста, используйте это программное обеспечение, только если у вас активная подписка на Photoshop. Я не несу ответственности за любое использование.  Этот репозиторий git содержит установщик photoshop CC 2021 для Linux с wine. 
Если вы используете что-то из моего репозитория в своем проекте, пожалуйста, поставьте мне оценку

# Требования
* wine>= 6.1
* zenity
* appmenu-gtk-module `не был установлен при тестировании на ubuntu`
* tar
* wget
* curl
* Все права на доступ к вашей домашней папке и папке установщика
* Графический процессор или APU с поддержкой Vulkan (более старые графические процессоры могут столкнуться с этой проблемой # 100)


# Использование:

`sh photoshop2021install.sh /path/to/your/install/folder`

Camera Raw Вы можете установить Camera Raw следующим образом:

`curl -L "https://download.adobe.com/pub/adobe/photoshop/cameraraw/win/12.x/CameraRaw_12_2_1.exe" > CameraRaw_12_2_1.exe WINEPREFIX=/Path/To/Your/Photoshop/Install/Adobe-Photoshop wine CameraRaw_12_2_1.exe`

Чтобы использовать camera raw, вам необходимо изменить настройки Edit -> preferences -> Camera raw ... -> performance -> Use graphic processor: Выкл.

Если camera raw иногда отображается серым цветом, просто перейдите в: Правка -> настройки -> Инструменты и снимите флажок показывать всплывающие подсказки.

# Удаление

Для удаления удалите файл photoshop desktop в `~/.local/share/applications/` и папку установки

# Благодарность

* Команда WineHQ: Для создания вина
* Gictorbit: Для первоначального вдохновения
* HansKristian-Work: Для создания VKD3D-Proton
* Adobe: Для создания Photoshop (также, пожалуйста, выпустьте официальную версию для Linux ...)
* LinSoftWin: За основу скрипта

# Тестирование

| Operating system | Wine wersion | Test date | Installs? | Runs? | Problems | Rating |
|-------------|-------------|-------------|-------------|-------------|-------------|-------------|
| Ubuntu 23.10 | 9.0 | 19.01.2024 | Yes | Yes | Некоторые элементы интерфейса глючат | Silver |
| - | - | - |
