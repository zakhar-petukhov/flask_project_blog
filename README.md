# Создание блога на Flask

## Предварательные условия
* установить docker https://docs.docker.com/install/
* установить docker-compose https://docs.docker.com/compose/install
## Создание образа
* `docker-compose build`
## Запуск контейнера
* `docker-compose up -d`
## Migrations
Создать миграцию:

* `docker exec -it flask_project bash -c "python manage.py db migrate"`

Обновить базу данных:

* `docker exec -it flask_project bash -c "python manage.py db upgrade"`

## Остановкa и удаление:

* `docker-compose stop && docker-compose rm -f`

## Логи и устранение неполадок
Просмотр логов:

* `docker-compose logs`

Доступ к приложению оболочки контейнера:

 * `docker exec -it dockerflask_flaskapp_1 bash`
