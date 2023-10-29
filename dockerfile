# 기본 이미지를 선택합니다. 웹 서버로 Nginx를 사용합니다.
FROM nginx:latest

# 컨테이너 내에서 작업 디렉토리를 설정합니다.
WORKDIR /usr/share/nginx/html

# HTML 및 JavaScript 파일을 컨테이너로 복사합니다.
COPY index.html .

# 영상 파일을 복사합니다.
COPY video.mp4 .

# Nginx 설정 파일을 덮어씁니다.
# COPY nginx.conf /etc/nginx/nginx.conf

# 포트 80을 노출합니다.
EXPOSE 80

# 컨테이너 시작 시 Nginx를 실행합니다.
CMD ["nginx", "-g", "daemon off;"]

