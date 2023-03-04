# 기타 코드 악보 사이트
Ruby on Rails로 작성하고 AWS EC2 인스턴스에 배포한 웹 애플리케이션입니다.

## 시스템 구성도
![system_architecture](https://user-images.githubusercontent.com/101819709/222716782-4badd477-c0c9-4bab-a9cb-b9b726908831.png)

## 개체 관계도
![e-r_diagram](https://user-images.githubusercontent.com/101819709/222727853-0ccabd33-0c5d-416a-99d9-32e3d361ad94.png)

## 사용된 기술
- 서버
  - Ubuntu 22.04
  - Nginx 1.18
  - Phusion Passenger 6.0.17
  - Ruby on Rails 7.0.4
    - Ruby 2.7.7
    - Gem
      - bootstrap-sass 3.4.1
      - bcrypt
      - faker
      - will_paginate
      - bootstrap-will_paginate 1.0.0
      - Capistrano 3.10
      - Capistrano-rails 1.5
      - Capistrano-db-tasks
- DB
  - PostgreSQL 14.7
- 배포
  - AWS
    - EC2
      - Elastic Load Balancer
    - Route 53
