# Backend API server

## 1. 개발 목표

1. Entity 클래스와 ResponseDto 클래스를 분리해서 구현한다.
2. githook과 bash 스크립트를 이용해 자동 배포를 도전하다.
3. Spring security 도움 없이 집적 oauth를 구현한다.
4. 프로젝트 기간 동안 배포를 3번 이상한다.
5. Database migration 툴을 통해 데이터베이스 형상 관리를 한다.
6. 배포 환경에서 모니터링을 효과적으로 하기 위해 로그 파일을 s3에 저장한다.

## 2. 사용법

1. database schema 관리를 위해 `flyway.conf` 파일 작성
2. 테스트 코드 실행을 위해 `src/test/resource/application-secret.properties` 파일 작성
3. 스프링 구동을 위해 `src/main/resource/application-secret.properties` 파일 작성

**flyway.conf**
```
flyway.url=
flyway.schemas=
flyway.user=
flyway.password=
```

**src/test/resource/application-secret.properties**
**src/main/resource/application-secret.properties**
```properties
spring.datasource.driver-class-name=
spring.datasource.url=
spring.datasource.username=
spring.datasource.password=

spring.flyway.clean-disabled=
```
