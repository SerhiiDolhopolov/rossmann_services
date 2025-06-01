<!-- omit in toc -->
## Services
[![docker](https://img.shields.io/badge/docker-d6123c?style=for-the-badge&logo=docker&logoColor=white)](#)
[![kafka](https://img.shields.io/badge/kafka-d6123c?style=for-the-badge&logo=apachekafka&logoColor=white)](#)
[![minio s3](https://img.shields.io/badge/minio%20s3-d6123c?style=for-the-badge&logo=minio&logoColor=white)](#)
[![clickhouse](https://img.shields.io/badge/clickhouse-d6123c?style=for-the-badge&logo=clickhouse&logoColor=white)](#)

<!-- omit in toc -->
## Table of Contents
- [Introduction](#introduction)
- [Project workflow](#project-workflow)
  - [Domain](#domain)
  - [Local schema](#local-schema)
  - [Cloud schema](#cloud-schema)
- [Docker containers](#docker-containers)
- [ClickHouse schema](#clickhouse-schema)
- [Getting Started](#getting-started)
- [Next section of the project:](#next-section-of-the-project)

## Introduction
🟢 **This is part 1 of 7 docker-sections in the project.**

This project is the final task for the Big Data Infrastructure Technologies course at [BigDataLab](https://www.bigdatalab.com.ua/).
The task of the project is to build the architecture of the Rozman supermarket. Make a demonstration of the architecture's operation locally, and also build a diagram of cloud technologies.

## Project workflow
### Domain
Rossmann's business model focuses on offline customers who generate the main revenue. The web environment serves as a supplementary channel. Real-time data is not critical, as products are non-unique; therefore, inventory updates can be sent periodically to ensure timely restocking.
<table>
  <tr>
    <th style="width: 120px; border-right:2px solid grey;">Criterion</th>
    <th>Supermarket (Rossmann)</th>
    <th>Marketplace (Rozetka, Elmir)</th>
  </tr>
  <tr>
    <td style="border-right:2px solid grey;">Main Customer</td>
    <td>Offline, purchases on the spot</td>
    <td>Online, picks up orders at a collection point</td>
  </tr>
  <tr>
    <td style="border-right:2px solid grey;">Importance of Stock Data</td>
    <td>Low: products are not unique</td>
    <td>High: products may be rare or limited</td>
  </tr>
  <tr>
    <td style="border-right:2px solid grey;">Stock Management</td>
    <td>Managed locally by stores</td>
    <td>Managed centrally by the server</td>
  </tr>
</table>

This highlights how business architecture and data needs can vary significantly, even within seemingly similar sectors.

![Domain](images/domain.png)

### Local schema
The diagram was created at [draw.io](https://app.diagrams.net/)
![Local schema](images/local_schema.png)

### Cloud schema
The diagram was created at [draw.io](https://app.diagrams.net/)
![Cloud schema](images/cloud_schema.png)

## Docker containers
**This docker section have:**
  - [Adminer](https://www.adminer.org/en/) to view SQL databases
  - [Minio S3](https://min.io/) as datalake
  - [ClickHouse](https://clickhouse.com/) as DWH
  - [ch-ui](https://ch-ui.com/) to view ClickHouse
  - [Kafka](https://kafka.apache.org/) as a messages broker

## ClickHouse schema
TTL of records = 4 months.

Partitions by month of accepted_time/transaction_time.

![ClickHouse schema](images/clickhouse_db.png)

## Getting Started
**To start:**
1. Run the command below to create a network. Thanks to the network docker containers will see each one. (Execute only once)
```bash
docker network create --driver bridge rossmann-network
```
2. Restore S3 volume with product images (Execute only once):
```bash
docker run --rm -v minio-data:/data -v ${PWD}:/backup busybox tar -xzf /backup/minio-data.tar.gz -C /data
```
3. Run services:
```
docker compose up --build
```

## Next section of the project:

[Rossmann OLTP](https://github.com/SerhiiDolhopolov/rossmann_oltp)

