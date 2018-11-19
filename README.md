# langbattle_dart

## Контест для Orel Codes

Задача:

Написать программу котороая принимает по HTTP Post запрос в JSON и
по полученному JSON'у гененрирует в ответ JSON

Пример Input'а

```javascript
{
 id: 'Rand ID',
 first_name: 'Rand Name',
 last_name: 'Rand Last Name'
}
```

Output:

```javascript
{
 id: 'Input ID'
 first_name: 'first_name + hash_md5(first_name)',
 last_name: 'last Name + hash_md5(last_name)',
 current_time: 'UTC time',
 say: 'Your language is best'
}
```

В ответе должен быть заголовок

Content-Type: application/json

Формат сurrent_time: %F %T %z (2018-11-01 17:35:15 +0300)

## Running the Application Locally

Run `aqueduct serve` from this directory to run the application. For running within an IDE, run `bin/main.dart`. By default, a configuration file named `config.yaml` will be used.

To generate a SwaggerUI client, run `aqueduct document client`.

## Running Application Tests

To run all tests for this application, run the following in this directory:

```
pub run test
```

The default configuration file used when testing is `config.src.yaml`. This file should be checked into version control. It also the template for configuration files used in deployment.

## Deploying an Application

See the documentation for [Deployment](https://aqueduct.io/docs/deploy/).

## Стек

Dart 2+, Aqueduct 3+