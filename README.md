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
- [Getting Started](#getting-started)

## Introduction
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

![Domain](images/domain.png)

### Local schema
![Local schema](images/local_schema.png)

### Cloud schema
![Cloud schema](images/cloud_schema.png)

## Getting Started