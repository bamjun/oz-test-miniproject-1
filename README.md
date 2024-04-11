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
