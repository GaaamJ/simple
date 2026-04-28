# _internal/

> **템플릿 제작자용 내부 디렉터리입니다.**

이 디렉터리는 템플릿 자체를 개선하고 관리하기 위한 내부 문서를 담습니다.

- 사용자 프로젝트 작업: 루트 `TODO.md` 사용
- 템플릿 개선 작업: 이 디렉터리의 `TEMPLATE_TASKS.md` 사용

## 주의

- 일반 AI 작업 흐름 (`/today`, `/implementer` 등)에서 이 디렉터리를 읽지 않습니다.
- 템플릿을 fork하거나 수정하는 경우에만 이 디렉터리를 참조하세요.

## 파일 목록

| 파일 | 설명 |
|------|------|
| `TEMPLATE_TASKS.md` | 템플릿 제작 및 개선을 위한 작업 목록 |
| `TEMPLATE_CHANGELOG.md` | 템플릿 자체의 변경 이력 (사용자 프로젝트 이력은 루트 `CHANGELOG.md` 사용) |
| `RELEASE_NOTES.template.md` | 새 버전 릴리스 시 GitHub Release body에 붙여넣는 노트 템플릿 |

## 릴리스 흐름

1. `_internal/TEMPLATE_CHANGELOG.md`의 `[Unreleased]` 섹션에 변경사항 기록
2. 릴리스 준비 완료 시: `[Unreleased]` → `[vX.Y.Z] — YYYY-MM-DD` 로 변경
3. 태그 생성 및 푸시:
   ```bash
   git tag vX.Y.Z
   git push origin vX.Y.Z
   ```
4. GitHub Actions가 자동으로 드래프트 릴리스 생성 (`.github/workflows/release.yml`)
5. GitHub Releases 페이지에서 드래프트를 열고, `_internal/RELEASE_NOTES.template.md`를 참고해 릴리스 노트 작성 후 공개
