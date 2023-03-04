# 기타 코드 악보 사이트
Ruby on Rails로 작성하고 AWS EC2 인스턴스에 배포한 웹 애플리케이션입니다. [사이트 링크](https://myrailsproject.link)

## 주요 기능
- 곡 제목 또는 가수명으로 악보 검색 가능
- 악보 즐겨찾기(회원인 경우)
- 인기 악보, 인기 가수 순위
- 음악 장르 카테고리
- 악보 자동 스크롤, 스크롤 속도 조절(노래의 BPM에 맞출 수도 있음)
- 악보 키 조절
- 카포 위치 조절
- ~~회원가입시 이메일로 계정 활성화~~ (AWS SES 프로덕션 액세스 권한을 받지 못하여 현재 사용불가합니다)
- ~~비밀번호를 잊어버렸을 시 이메일로 비밀번호 재설정~~ (AWS SES 프로덕션 액세스 권한을 받지 못하여 현재 사용불가합니다)

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
