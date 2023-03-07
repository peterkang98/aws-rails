# :guitar: 기타 코드 악보 사이트 :musical_score:
**Ruby on Rails로 작성하고 AWS EC2 인스턴스에 배포한 웹 애플리케이션입니다. [사이트 링크](https://myrailsproject.link)**\
***(현재 완성된 악보는 Photograph - Ed Sheeran, The A Team - Ed Sheeran 2개뿐입니다.)***
### PC 화면
- 홈 화면
![image](https://user-images.githubusercontent.com/101819709/222896541-b692e830-81d2-47b4-9973-ff0895626ec2.png)
- 악보 페이지
![image](https://user-images.githubusercontent.com/101819709/222907559-66ac9925-17f2-4f10-9313-a5a26923e39d.png)
### 모바일 화면
홈 화면                     |  악보 페이지
:-------------------------:|:-------------------------:
![mobile](https://user-images.githubusercontent.com/101819709/222907241-aaca4658-39e1-418a-b510-26fab67ebb8c.gif)! | ![image](https://user-images.githubusercontent.com/101819709/222907364-bab53b59-14a6-4e74-becb-876c39890738.png)
## 주요 기능
- **곡 제목 또는 가수명으로 악보 검색 가능**
![image](https://user-images.githubusercontent.com/101819709/222906356-8fb0bb7e-4f66-4cf4-b5dc-185b9e33a6f6.png)
- **악보 즐겨찾기**(회원인 경우)
![favourites](https://user-images.githubusercontent.com/101819709/222904025-0821bd46-2a99-4990-8641-85df3a65d31f.gif)
![image](https://user-images.githubusercontent.com/101819709/222904124-bfe5baf6-5649-4707-8f38-4e7522450916.png)
- **음악 장르 카테고리**
- **인기 악보, 인기 가수 순위**
- **코드 운지법 표시 ON/OFF**
![controls](https://user-images.githubusercontent.com/101819709/222906141-73a8a79b-5192-4a67-bcd7-610b141cbc2b.gif)
- **악보 자동 스크롤, 스크롤 속도 조절**(노래의 BPM에 맞출 수도 있음)
![slide_control](https://user-images.githubusercontent.com/101819709/222906177-1bdae519-dcd3-4fae-98a8-b33191e30342.gif)
- **악보 키 조절**
- **카포 위치 조절**
![key_control](https://user-images.githubusercontent.com/101819709/222906213-a4e21349-d8eb-4ed7-be43-dce158de109a.gif)
- **~~회원가입시 이메일로 계정 활성화~~** (AWS SES 프로덕션 액세스 권한을 받지 못하여 현재 사용불가합니다)
- **~~비밀번호를 잊어버렸을 시 이메일로 비밀번호 재설정~~** (AWS SES 프로덕션 액세스 권한을 받지 못하여 현재 사용불가합니다)

## 시스템 구성도
![system_architecture](https://user-images.githubusercontent.com/101819709/222716782-4badd477-c0c9-4bab-a9cb-b9b726908831.png)

## 개체 관계도
![e-r_diagram](https://user-images.githubusercontent.com/101819709/222727853-0ccabd33-0c5d-416a-99d9-32e3d361ad94.png)

## 사용된 기술
- **서버**
  - **Ubuntu 22.04**
  - **Nginx 1.18**
  - **Phusion Passenger 6.0.17**
  - **Ruby on Rails 7.0.4**
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
    - Javascript
      - jQuery 3.4.1
      - Popper 2.11.6
      - Bootstrap 3.4.1
- **DB**
  - **PostgreSQL 14.7**
    - **pgAdmin 4 (v6.4)**
  - **Visual Paradigm 16.3** -> 개체 관계도 작성 프로그램
- **배포**
  - **AWS**
    - EC2
      - Elastic Load Balancer
    - Route 53
