<div align="center">

# <a href="https://github.com/mreliseyyt/">mreliseyyt</a><a href="https://github.com/mreliseyyt/zapret-config">/zapret-config</a>

Набор готовых конфигураций для обхода блокировок (DPI) на базе zapret  
Альтернатива https://github.com/bol-van/zapret-win-bundle

[![Релизы](https://img.shields.io/github/v/release/mreliseyyt/zapret-config?label=%D0%A1%D0%BA%D0%B0%D1%87%D0%B0%D1%82%D1%8C&color=brightgreen)](https://github.com/mreliseyyt/zapret-config/releases/latest)
[![Звёзды](https://img.shields.io/github/stars/mreliseyyt/zapret-config?style=social)](https://github.com/mreliseyyt/zapret-config/stargazers)

</div>

---

## 📋 Содержание
- [📁 Готовые конфигурации](#-готовые-конфигурации)
- [🚀 Быстрый старт](#-быстрый-старт)
- [⚙️ Использование service.bat](#️-использование-servicebat)
- [🛡️ Антивирусы и безопасность](#️-антивирусы-и-безопасность)
- [❓ Часто задаваемые вопросы](#-часто-задаваемые-вопросы)
- [🗒️ Добавление своих сайтов](#️-добавление-своих-сайтов)
- [⭐ Поддержка проекта](#-поддержка-проекта)

---

## 📁 Готовые конфигурации

Все конфигурационные файлы находятся в ветке [`config`](https://github.com/mreliseyyt/zapret-config/tree/config).  
Нажмите на название конфига, чтобы перейти к его описанию, или скачайте сразу:

| Категория | Конфиг | Описание | Действие |
|:---------:|--------|----------|:--------:|
| 🎮 | **Games** | Игровые сервисы: Steam, Epic Games Store, GOG, Battle.net, Riot Games, Minecraft и др. | [📖 Описание](#games) • [⬇️ Скачать](https://github.com/mreliseyyt/zapret-config/raw/config/games.txt) |
| 📺 | **Anime** | Аниме-сайты: shikimori.one, animevost, animego, jut.su, AniLibria и др. | [📖 Описание](#anime) • [⬇️ Скачать](https://github.com/mreliseyyt/zapret-config/raw/config/anime.txt) |
| ☁️ | **Cloudflare** | Сайты, использующие CDN Cloudflare (частые проблемы с DPI) | [📖 Описание](#cloudflare) • [⬇️ Скачать](https://github.com/mreliseyyt/zapret-config/raw/config/cloudflare.txt) |
| ☁️ | **Clouds** | Облачные сервисы и хранилища | [📖 Описание](#clouds) • [⬇️ Скачать](https://github.com/mreliseyyt/zapret-config/raw/config/clouds.txt) |
| 🎮 | **Epic Games** | Только магазин и лаунчер Epic Games Store | [📖 Описание](#epicgames) • [⬇️ Скачать](https://github.com/mreliseyyt/zapret-config/raw/config/epicgames.txt) |
| 🔞 | **Erotic** | Контент для взрослых (18+) | [📖 Описание](#erotic) • [⬇️ Скачать](https://github.com/mreliseyyt/zapret-config/raw/config/erotic.txt) |
| 🎮 | **Itch.io** | Платформа инди-игр Itch.io и её CDN | [📖 Описание](#itch) • [⬇️ Скачать](https://github.com/mreliseyyt/zapret-config/raw/config/itch.txt) |
| 📱 | **SMM** | Сервисы для социальных медиа и маркетинга | [📖 Описание](#smm) • [⬇️ Скачать](https://github.com/mreliseyyt/zapret-config/raw/config/smm.txt) |
| 👥 | **Social** | Социальные сети и мессенджеры | [📖 Описание](#social) • [⬇️ Скачать](https://github.com/mreliseyyt/zapret-config/raw/config/social.txt) |
| 🔒 | **VPN** | Сайты VPN-сервисов и прокси | [📖 Описание](#vpn) • [⬇️ Скачать](https://github.com/mreliseyyt/zapret-config/raw/config/vpn.txt) |

> 💡 **Как использовать:**  
> 1. Скачайте нужный `.txt` файл по ссылке выше  
> 2. Поместите его в папку `lists` вашего Zapret  
> 3. Запустите соответствующий `general_*.bat` файл или создайте свой

### Подробнее о конфигах

#### <a name="games"></a>🎮 Games (`games.txt`)
Этот конфиг объединяет домены крупнейших игровых платформ:
- **Магазины**: Steam, Epic Games Store, GOG, Microsoft Store
- **Лаунчеры**: Battle.net, Origin, Ubisoft Connect
- **Игры**: Minecraft, Fortnite, League of Legends, Valorant, Genshin Impact, Roblox
- **Сервисы**: Twitch, Nexus Mods, CurseForge

#### <a name="anime"></a>📺 Anime (`anime.txt`)
Для любителей аниме и манги:
- **Крупные сайты**: shikimori.one, animevost.org, animego.org, jut.su
- **Плееры**: anime365.ru, yummyanime.club
- **Релизеры**: AniDUB, AniLibria, AnimeJoy
- **Базы данных**: world-art.ru, animenewsnetwork.com

#### <a name="itch"></a>🎮 Itch.io (`itch.txt`)
Специализированный конфиг для платформы инди-игр Itch.io и её контент-сети:
- Основной домен: `itch.io`
- CDN для изображений и файлов: `img.itch.zone`
- HTML5-плеер: `html-classic.itch.zone`

---

## 🚀 Быстрый старт

1. **Включите Secure DNS** (обязательно!)
   * **Chrome**: Настройки → Конфиденциальность и безопасность → Безопасный DNS → Выберите другого провайдера (Google, Cloudflare)
   * **Firefox**: Настройки → Приватность и защита → DNS через HTTPS → Максимальная защита
   * **Windows 11**: [Инструкция по настройке](https://www.howtogeek.com/765940/how-to-enable-dns-over-https-on-windows-11/)

2. **Скачайте и распакуйте**
   * Перейдите на [страницу последнего релиза](https://github.com/mreliseyyt/zapret-config/releases/latest)
   * Скачайте архив `zapret-config-...zip`
   * Распакуйте в папку без кириллицы (например, `C:\zapret`)

3. **Запустите обход**
   * Запустите любой `general_*.bat` файл от имени администратора
   * Или установите в автозапуск через `service.bat`

---

## ⚙️ Использование service.bat

`service.bat` — главный инструмент для управления обходом.

| Команда | Описание |
|---------|----------|
| **1. Install Service** | Установка выбранной стратегии в автозапуск (служба Windows) |
| **2. Remove Services** | Полное удаление всех служб Zapret и WinDivert |
| **3. Check Status** | Проверка статуса обхода и служб |
| **4. Game Filter** | Вкл/Выкл режим для игр (UDP/TCP порты >1023). **Нужен перезапуск!** |
| **5. IPSet Filter** | Три режима: `none` (отключено), `loaded` (по списку), `any` (все IP) |
| **6. Auto-Update Check** | Автоматическая проверка обновлений при запуске |
| **7. Check for Updates** | Ручная проверка обновлений |
| **8. Run Diagnostics** | Диагностика проблем и очистка кэша Discord |
| **9. Run Tests** | Тестирование стратегий на работоспособность |

---

## 🛡️ Антивирусы и безопасность

> [!CAUTION]
> **Оригинальный канал:** [t.me/festidev](https://t.me/festidev) — другие каналы фейк!

**О WinDivert:**
WinDivert — это легальный драйвер для перехвата трафика, необходимый для работы zapret. Некоторые антивирусы могут ошибочно помечать его как угрозу.

**Что делать:**
1. Добавьте всю папку с программой в исключения антивируса
2. В антивирусах (например, Kaspersky) отключите опцию "Обнаруживать легательные программы, которые могут быть использованы злоумышленниками"

---

## ❓ Часто задаваемые вопросы

### 🔸 После запуска `general*.bat` ничего не происходит
* Убедитесь, что запустили файл **от имени администратора**
* Проверьте, не заблокировал ли антивирус `winws.exe`
* Запустите `service.bat` → `Run Diagnostics`

### 🔸 Не работает Telegram Web или голосовые каналы Discord
* Запустите `service.bat` → выберите **`Update hosts file`**
* Если hosts неактуален, скопируйте новый контент в `C:\Windows\System32\drivers\etc\hosts`

### 🔸 Обход перестал работать
* Стратегии могут устаревать — попробуйте другой `general*.bat` файл
* Выберите другую стратегию: `fake`, `multisplit`, `hostfakesplit`
* См. [обсуждение #765](https://github.com/mreliseyyt/zapret-config/issues/765)

### 🔸 Не работает игра/приложение
* В `service.bat` отключите **Game Filter** и **IPSet Filter**
* Добавьте проблемный домен в `list-exclude-user.txt`

---

## 🗒️ Добавление своих сайтов

Хотите добавить свой сайт? Используйте файлы в папке `lists`:

| Файл | Назначение |
|------|------------|
| `list-general-user.txt` | Ваши домены для обхода |
| `list-exclude-user.txt` | Домены, которые нужно исключить |
| `ipset-all.txt` | IP-адреса и подсети |
| `ipset-exclude-user.txt` | IP для исключения |

> Файлы с `-user` создаются автоматически при первом запуске.

---

## ⭐ Поддержка проекта

* Поставьте ⭐ этому репозиторию (кнопка сверху справа)
* Поддержите оригинального разработчика zapret — [bol-van](https://github.com/bol-van)

---

## 🩷 Благодарности

Огромное спасибо:
* **[bol-van](https://github.com/bol-van)** — создателю оригинального [zapret](https://github.com/bol-van/zapret)
* Всем [контрибьюторам](https://github.com/mreliseyyt/zapret-config/graphs/contributors), которые помогают улучшать проект

---

<div align="center">

**Проект распространяется под лицензией [MIT](https://github.com/mreliseyyt/zapret-config/blob/main/LICENSE.txt)**

</div>
