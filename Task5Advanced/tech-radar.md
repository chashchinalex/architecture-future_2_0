# Расширенный Технический Радар (Tech Radar)

Этот документ фиксирует целевой технологический стек и архитектурные подходы компании «Будущее 2.0».

## Обзор квадрантов

### 1. Techniques & Architecture (Методологии и Паттерны)
В этом секторе мы фиксируем переход от монолита к распределенной событийной архитектуре.

| Ring | Технология / Паттерн | Описание |
|:---|:---|:---|
| **Adopt** | **Event-Driven Architecture (EDA)** | Основной паттерн интеграции. Асинхронное взаимодействие через события. |
| **Adopt** | **Domain-Driven Design (DDD)** | Подход к моделированию микросервисов (Bounded Contexts). |
| **Adopt** | **Infrastructure as Code (IaC)** | Управление облачной инфраструктурой через код (Terraform). |
| **Trial** | **Data Mesh** | Децентрализация владения данными. Переход от DWH к доменным продуктам данных. |
| **Trial** | **Change Data Capture (CDC)** | Паттерн захвата изменений из БД (Debezium) для наполнения Data Lake. |
| **Hold** | **Monolithic Database Integration** | Интеграция сервисов через общую базу данных (Shared Database pattern). |

### 2. Platforms & Infrastructure (Платформы)
Переход от On-Premise серверов к облачным управляемым сервисам (Managed Services).

| Ring | Технология | Описание |
|:---|:---|:---|
| **Adopt** | **Kubernetes (K8s)** | Стандарт де-факто для оркестрации контейнеров микросервисов. |
| **Adopt** | **Kafka / Redpanda** | Стриминговая платформа для Event Bus. |
| **Adopt** | **PostgreSQL** | Основная реляционная БД для микросервисов. |
| **Trial** | **S3 + Delta Lake** | Основа для Data Lakehouse (хранение больших данных). |
| **Assess** | **CockroachDB** | Распределенная SQL-база для финтеха (обеспечение строгой согласованности). |
| **Hold** | **MS SQL Server 2008** | Устаревшее ядро DWH. Подлежит выводу из эксплуатации. |
| **Hold** | **Apache Camel (Legacy)** | Использование Camel как централизованной ESB шины. |

### 3. Tools & Data (Инструменты данных)
Инструментарий для реализации Data Mesh и CI/CD.

| Ring | Технология | Описание |
|:---|:---|:---|
| **Adopt** | **Docker** | Контейнеризация приложений. |
| **Adopt** | **Terraform** | Инструмент IaC для облака. |
| **Adopt** | **GitLab CI / GitHub Actions** | Пайплайны сборки и деплоя. |
| **Trial** | **dbt (data build tool)** | Трансформация данных внутри хранилища (T in ELT). |
| **Trial** | **Superset / PowerBI Cloud** | BI-инструменты для самообслуживания (Self-Service). |
| **Trial** | **Kafka Connect (Debezium)** | Коннекторы для CDC стриминга. |
| **Assess** | **DataHub** | Каталог данных (Data Catalog) для Data Mesh governance. |
| **Hold** | **PowerBuilder** | Legacy-инструмент разработки интерфейсов. |

### 4. Languages & Frameworks (Языки)
Полиглот-среда, оптимизированная под задачи доменов.

| Ring | Технология | Описание |
|:---|:---|:---|
| **Adopt** | **Java / Kotlin (Spring Boot)** | Основной стек для "тяжелого" бэкенда (Медицина). |
| **Adopt** | **Go (Golang)** | Стек для высоконагруженных сервисов (Финтех). |
| **Adopt** | **Python** | Стек для ML/AI сервисов и Data Engineering. |
| **Adopt** | **React / Angular** | Стек для создания веб-интерфейсов. |