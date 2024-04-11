# 기본 이미지로 Python 3.11을 선택합니다.
FROM python:3.11

# 환경 변수 설정으로 Python이 stdout에 출력하도록 합니다.
ENV PYTHONUNBUFFERED=1

# poetry 설치
RUN pip install --upgrade pip \
  && pip install poetry

# 작업 디렉터리 설정
WORKDIR /app

# pyproject.toml 파일과 poetry.lock 파일(있는 경우) 복사
COPY pyproject.toml poetry.lock* ./

# 종속성 설치
RUN poetry config virtualenvs.create false \
  && poetry install --no-dev --no-interaction --no-ansi

# 애플리케이션 복사
COPY . .

# Flask 애플리케이션 실행을 위한 환경 변수 설정
ENV FLASK_APP=app:create_app
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000


# Entrypoint 스크립트 추가
COPY entrypoint.sh /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]