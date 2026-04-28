# src/

모듈 소스 디렉터리. 현재 비어 있음.

## 언제 사용하는가

- 프로젝트에 독립적인 작업 단위(모듈)가 생기면 `src/[module-name]/`으로 추가한다.
- 각 모듈은 자체 `CLAUDE.md`와 `CHANGELOG.md`를 가진다.

## 언제 비워도 되는가

- 아직 모듈로 나눌 만큼 작업이 구체화되지 않은 경우
- 단일 모듈로 충분한 소규모 프로젝트인 경우 (루트 문서만으로 관리 가능)

## 모듈 추가 방법

```
src/
└── [module-name]/
    ├── CLAUDE.md       # 모듈 컨텍스트 (역할, 인터페이스, 상태)
    └── CHANGELOG.md    # 모듈 작업 이력
```

`BLUEPRINT.md`의 Module Map과 `CLAUDE.md`의 Module Map도 함께 업데이트한다.
