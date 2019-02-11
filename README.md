# Eureka
> Spring Cloud Netflix Eureka 샘플 프로젝트.

서비스 인스턴스 목록과 그 위치(host, port)가 동적으로 변하는 환경에서 사용자가 그 위치를 모두 관리하기는 어렵다.
Eureka를 사용하면 등록된 모든 서비스의 정보를 registry로 관리하고, 이에 대한 접근 정보를 요청하는 서비스에게 목록을 제공한다.

## Getting started

- System Requirements

    | Type      	| Tool         	| Version      	|
    |-----------	|--------------	|--------------	|
    | Compiler  	| JDK         	| 1.8 이상     	|
    | Builder   	| maven        	| 3.2 이상     	|
    | Framework 	| Spring Boot  	| 2.0.2       	|
    |           	| Spring Cloud 	| Finchley.RELEASE 	|

- Initial Configuration

    | Value      	| Description         	|
    |-----------	|--------------	|
    | PORT  	|  Server Port( default port: 7070)         	|
    | EUREKA_SERVER_URL  	|  Eureka Server URI (ex>http://localhost)         	|
    | EUREKA_SERVER_PORT  	|  Eureka Server PORT (default port: 7070)   	|

- Screenshot

    ![](https://github.com/SDSACT/coe-eureka/raw/master/document/images/service-registry.png)

## Related Links

- [MSA CoE Guide](https://coe.gitbook.io/guide/service-discovery/eureka)

- [Official site](https://spring.io/guides/gs/service-registration-and-discovery/)
  
