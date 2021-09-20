#  Итоговый прокт Рамазановой Раисат школы IOS 2021  
 
## Тема
  Темой для проекта стал **Интернет-магазин**
 
## Почему выбрано данное приложение? 
  Я решила реализовать именно интернет-магазин, тк функционал данного приложения является очень популярным.
  
  Многие бренды стараются создать свое приложение с личным кабинетом, каталогом услуг и корзиной 
  
## Что реализовано в проекте?
- Core Data для хранения моделей данных
- KeyChain и UserDefaults для пользовательских настроек
- Swift styleguides (Google styleguides)
- Не использовать сторонние библиотеки (кроме snapshot-тестов и Swiftlint)
- Использование сети
- Отображение медиа (аудио, видео, изображения) из сети
- Количество экранов: 
  - 6
- UINavigationController и TabBarController
- UIAlertController и UIActivityIndicatorView
- Модульные тесты (не 10%, много меньше)
- UI-тест через page object
- Snapshot тест для iPhone SE 
- архитектура 
  - MVC + MVVM 
- Верстка UI в коде
- UITableView и UICollectionView
- Кастомные анимации
- Swiftlint

## Логика приложения и экранов 
Вся история начинается с TabBar с 3-мя табами

### При запуске приложения мы попадаем сразу в **каталог** 
Каталог реализован с помощью UICollectionView
Пока данные грузятся из сети, перед нами ActivityIndicator

<img src="https://raw.githubusercontent.com/RaisaRamazanova/Homework/main/photo_2021-09-19%2001.33.27.jpeg?token=APSVBYGGM3J7EO37PLE6P7TBIZWNY" width="200" />

В каталоге работает поиск по брендам и типам вещей 

<img src="https://raw.githubusercontent.com/RaisaRamazanova/Homework/main/photo_2021-09-19%2001.34.10.jpeg" width="200" />

При нажатии на ячейки, ты попадаем на детальный экран

О нем чуть позже

### Второй элемент TabBar - это профиль, нажимая на него мы попадаем на экран **входа в личный кабинет**
 
 <img src="https://raw.githubusercontent.com/RaisaRamazanova/Homework/main/photo_2021-09-19%2001.34.03.jpeg?token=APSVBYEOVHZN36ZFK42PS63BIZWUU" width="200" />
 
Из экрана входа в личного кабинет можно перейти на **экран регистрации** или на экран самого **личного кабинета**

Приложение автоматически входит в личный кабинет, если пользователь был авторизован при закрытии приложения 
Label "Привет, Имя" с анимацией блеска
 
При регистации имя пользрвателя сохраняется в UserDefaults, а логин и пароль в KeyChain

<img src="https://raw.githubusercontent.com/RaisaRamazanova/Homework/main/photo_2021-09-19%2001.33.49.jpeg?token=APSVBYF77T75ZUHI4EVZGFDBIZWSS" width="200" />  <img src="https://raw.githubusercontent.com/RaisaRamazanova/Homework/main/photo_2021-09-19%2001.34.00.jpeg?token=APSVBYCGX3VUXKGXTXI2LHLBIZWHI" width="200" />
 
### Третий элемент TabBar - это **корзина**
Если корзина пустая, то мы видим label и изображение - заглушки

Они исчезают, если что-то добавлено в корзину

Не пустая корзина реализована с помощью UITableView

В корзине можно удалять одежду по 1 шт или всю сразу 

Так же можно перейти на детальный экран, нажав на ячейку UITableView

 <img src="https://raw.githubusercontent.com/RaisaRamazanova/Homework/main/photo_2021-09-19%2001.33.53.jpeg?token=APSVBYCRVRLHVULCN2EXFPTBIZV3Q" width="200" />  <img src="https://raw.githubusercontent.com/RaisaRamazanova/Homework/main/photo_2021-09-19%2001.33.58.jpeg?token=APSVBYFHBZ67D7IVEQJ37I3BIZXAE" width="200" /> <img src="https://raw.githubusercontent.com/RaisaRamazanova/Homework/main/photo_2021-09-19%2001.33.56.jpeg?token=APSVBYFRJEM7ZUNOA5Q24XLBIZXDK" width="200" />

### Нажав на одну вещь в каталоге или корзине открывается детальный экран, который скролится 

<img src="https://raw.githubusercontent.com/RaisaRamazanova/Homework/main/photo_2021-09-19%2001.34.07.jpeg" width="200" />  <img src="https://raw.githubusercontent.com/RaisaRamazanova/Homework/main/photo_2021-09-19%2001.34.05.jpeg" width="200" />

 ## Какая архитектура?
  Вначале я реализовывала MVC, однако после некоторые controller-ы стали слишком "толстыми" и я отделила логику в ModelView 
  
  Так реализованы DetailViewController и SecondViewController
  
 ## Отделение Controller от View
Создание некоторых View вынесено из Controller файлов, если создается больше 3-х View в одной файле Controller-ов

## Работа с CoreData
Данные при клике на кнопку "Добавить в корзину" из детального экрана сохраняются в CoreData, и при отображении экрана корзины мы берем данные из CoreData

# Работа с сетью
Я создала json файл с данными, которые подгружаюся в приложение при его запуске 


