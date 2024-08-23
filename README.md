# 1. aws - ec2 생성  

<img width="1199" alt="image" src="https://github.com/bamjun/oz-test-miniproject-1/assets/21354840/265b7802-066d-42f9-9f83-be51dbc24c26">

<img width="1199" alt="image" src="https://github.com/bamjun/oz-test-miniproject-1/assets/21354840/56622d39-eaee-4e22-94a2-8de273389b38">

<img width="974" alt="image" src="https://github.com/bamjun/oz-test-miniproject-1/assets/21354840/67cbad92-e828-4665-829c-100ca2a81737">

<img width="1199" alt="image" src="https://github.com/bamjun/oz-test-miniproject-1/assets/21354840/90acc74c-9c3f-4dde-b2f9-79be3c12ee57">


# 2. ec2 - git 설치  

```bash
sudo yum install git -y
```
# 3. 도커설치  

```bash
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
```

# 4. 도커 권한 부여  

```bash
sudo usermod -aG docker ec2-user
```

```sh
sudo usermod -aG docker $USER
```
```sh
sudo usermod -aG docker ${USER}
```

```bash
exec su -l $USER
```

# 5. 도커 컴포즈 설치

```bash
sudo curl -L "https://github.com/docker/compose/releases/download/v2.24.6/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

# 6. 도커 컴포즈 권한 설정  

```bash
sudo chmod +x /usr/local/bin/docker-compose
```

# 7. 깃 클론  

```bash
git clone https://github.com/bamjun/oz-test-miniproject-1.git
```

# 8. 설치 폴더로 이동  

```bash
cd oz-test-miniproject-1
```

# 9.  entrypoint.sh 권한 부여

```bash
ls -l entrypoint.sh
chmod +x entrypoint.sh
```

# 10. 도커 컴포즈 실행

```bash  
sudo docker-compose -f docker-compose.yml up -d
```



---  

<br>  

---  

<br>  

---  

<br>  


Ubuntu 환경에서 위의 작업을 수행하기 위한 명령어는 다음과 같습니다:

### Step-by-Step Instructions

1. **Git 설치**:
    ```sh
    sudo apt update
    sudo apt install git -y
    ```

2. **Docker 설치**:
    ```sh
    sudo apt install docker.io -y
    sudo systemctl start docker
    sudo systemctl enable docker
    ```

3. **Docker 권한 부여**:
    ```sh
    sudo usermod -aG docker $USER
    ```
    ```sh
    sudo usermod -aG docker ${USER}
    ```
    ```
    newgrp docker
    ```

4. **Docker Compose 설치**:
    ```sh
    sudo curl -L "https://github.com/docker/compose/releases/download/v2.24.6/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    ```

5. **Docker Compose 권한 설정**:
    ```sh
    sudo chmod +x /usr/local/bin/docker-compose
    ```

6. **Git 클론**:

    ```sh
    git config --global credential.helper store
    ```
    
    ```sh
    git clone https://github.com/bamjun/[git hub address].git
    ```

7. **설치 폴더로 이동**:
    ```sh
    cd [git folder]
    ```

8. **`entrypoint.sh` 권한 부여**:
    ```sh
    ls -l entrypoint.sh
    chmod +x entrypoint.sh
    ```

9.  **Docker Compose 실행**:
    ```sh
    sudo docker-compose -f docker-compose.yml up -d
    ```

### 전체 명령어 스크립트

아래는 위의 모든 단계를 하나의 스크립트로 작성한 예제입니다:

```sh
#!/bin/bash

# 업데이트 및 Git 설치
sudo apt update
sudo apt install git -y

# Docker 설치
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

# Docker 권한 부여
sudo usermod -aG docker $USER

# Docker Compose 설치
sudo curl -L "https://github.com/docker/compose/releases/download/v2.24.6/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Docker Compose 권한 설정
sudo chmod +x /usr/local/bin/docker-compose

# Git 클론
git clone https://github.com/bamjun/oz-test-miniproject-1.git

# 설치 폴더로 이동
cd oz-test-miniproject-1

# entrypoint.sh 권한 부여
ls -l entrypoint.sh
chmod +x entrypoint.sh

# Docker Compose 실행
sudo docker-compose -f docker-compose.yml up -d
```

위 스크립트를 `setup.sh`와 같은 파일로 저장한 후, 다음 명령어로 실행할 수 있습니다:

```sh
chmod +x setup.sh
./setup.sh
```

이 스크립트는 Git, Docker 및 Docker Compose를 설치하고, 필요한 권한을 설정하며, 프로젝트를 클론하고 Docker Compose를 실행합니다.