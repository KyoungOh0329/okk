---
theme: uncover 
class : invert
marp: true
---

# OSI 7 계층 
Open Systems Interconnection Model

---

1. **물리 계층 (Physical Layer)**
2. **데이터 링크 계층 (Data Link Layer)**
3. **네트워크 계층 (Network Layer)**
4. **전송 계층 (Transport Layer)**
5. **세션 계층 (Session Layer)**
6. **표현 계층 (Presentation Layer)**
7. **응용 계층 (Application Layer)**
---

## 1. 물리 계층<br>(Physical Layer)

- **목적**: 비트(Bit) 단위의 데이터 전송
- **장비 예시**: 허브, 리피터, 케이블
---
![img](https://th.bing.com/th/id/OIP.ogsmrkRVrG-VBHUqgs9gRgHaHa?w=208&h=208&c=7&r=0&o=5&dpr=2&pid=1.7) ![img](https://th.bing.com/th/id/OIP.3Go19_Ixxw0II1k7ARydngHaED?w=304&h=180&c=7&r=0&o=5&dpr=2&pid=1.7)![img](https://th.bing.com/th/id/OIP.DoscgOT9CMJL4G37w8BjlQAAAA?pid=ImgDet&rs=1)

---

## 2. 데이터 링크 계층<br>(Data Link Layer)

- **목적**: 프레임 단위의 데이터 전송과 오류 검출 및 제어
- **장비 예시**: 스위치, 브리지, MAC 주소
---
![img](https://th.bing.com/th/id/OIP.dJhq0kEwfvtB5ehofWLN3gHaE7?w=252&h=180&c=7&r=0&o=5&dpr=2&pid=1.7) ![img](https://th.bing.com/th/id/OIP.bG72jVCqrVeDpjF43m0hygHaHa?w=164&h=180&c=7&r=0&o=5&dpr=2&pid=1.7)![img](https://th.bing.com/th/id/OIP.097HhrKzfQwSE7L3w7bLIgHaE6?w=307&h=203&c=7&r=0&o=5&dpr=2&pid=1.7)

---

## 3. 네트워크 계층<br>(Network Layer)

- **목적**: 패킷 단위의 데이터 전송 및 경로 선택, IP 주소 할당
- **장비 예시**: 라우터, IP 주소
---
![img](https://th.bing.com/th/id/OIP.wdQhOVZqrO-RbzFlv1miRgHaHa?w=175&h=180&c=7&r=0&o=5&dpr=2&pid=1.7) ![img](https://th.bing.com/th/id/OIP.GhwhNmLSMzrfmfvykuNdowHaEv?w=229&h=180&c=7&r=0&o=5&dpr=2&pid=1.7)

---

## 4. 전송 계층<br>(Transport Layer)

- **목적**: 세그먼트 단위의 데이터 전송, 연결의 설정 및 종료, 흐름 제어, 오류 제어
- **프로토콜 예시**: TCP, UDP
---

## 5. 세션 계층<br>(Session Layer)

- **목적**: 세션 연결, 유지 및 종료, 동기화, 회복 기능 제공
- **프로토콜 예시**: NetBIOS, RPC
---

## 6. 표현 계층<br>(Presentation Layer)

- **목적**: 데이터의 변환, 암호화, 압축 및 표현 방식의 조정
- **프로토콜 예시**: SSL/TLS, JPEG, GIF
---

## 7. 응용 계층<br>(Application Layer)

- **목적**: 사용자 인터페이스 및 응용 프로그램의 네트워크 서비스 제공
- **프로토콜 예시**: HTTP, FTP, SMTP, DNS