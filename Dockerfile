# OpenJDK 21 버전의 이미지를 가져와 JVM 환경을 구축한다.
# alpine은 용량이 작아 효율적이지만, 호환성을 위해 slim 버전을 더 권장하기도 합니다.
FROM eclipse-temurin:21-jre-alpine

# 작업 디렉토리를 설정한다.
WORKDIR /app

# 빌드된 jar 파일을 복사한다.
# build/libs/*.jar 경로에 파일이 하나만 있도록 빌드 설정을 확인하세요.
COPY build/libs/*.jar app.jar

# app.jar를 실행하여 스프링 부트 서버를 시작한다.
ENTRYPOINT ["java", "-jar", "app.jar"]