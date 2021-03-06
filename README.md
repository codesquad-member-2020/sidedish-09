# SIDEDISH - 9팀

## 구성원

- BackEnd: [Dingo](https://github.com/kyungrae) ☢️
- FrontEnd: [Reese](https://github.com/reesekimm) 🦄 [huey](https://github.com/hu2y)🐱
- iOS: [H](https://github.com/MagnaPax) 🦊

## Ground Rule

- 매일 11시 스크럼 - 진행상황 및 계획 등 공유, 늦을 것 같으면 **미리** 공지한다.
- 버전 업데이트를 위해 API 서버를 정지할 때, 팀원들에게 **사전**에 공지한다.
- 클라이언트 개발자가 API wiki를 보고 실수하지 않도록 업데이트를 **꾸준히** 한다.
- 개발 중 문제가 발생해서 다른 팀원에게 도움을 요청할 때는 문제를 이해할 수 있도록 가능한 **구체적**으로 슬랙 또는 이슈로 기술한다. (Ex. 에러 메세지, 환경)

## 배포 일정

| 날짜 | 일정 | 설명 |
|---|---|---|
| 2020-04-23 (월) | 1차 배포 | item, category API 배포 |
| 2020-04-28 (화) | 2차 배포 | nginx & tomcat 설정 |
| 2020-04-29 (수) | 3차 배포 | |

## 배포 방벙

1. nginx, tomcat, jdk, node 설치
2. sudo ./deploy.sh
