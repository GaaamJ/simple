# Template Changelog

템플릿 자체의 변경 이력. 사용자 프로젝트 이력은 루트 `CHANGELOG.md` 사용.
섹션이 15개를 초과하면 30일 이상 된 항목을 `_archive/TEMPLATE_CHANGELOG_[YYYY-MM].md`로 이관.

---

## 2026-04-28

- `README.md` 전면 재작성 — "AI Pipeline Template" → "AI Pipeline", "workflow template" → "workflow environment", "What this is / What this is not" 섹션 추가, Skills 표 추가
- `CLAUDE.md` placeholder 전면 교체 — 실제 프로젝트 개요·목표·기술스택·현황·결정사항·제약·제외범위로 재작성

## 2026-04-28 (1)

- `TODO.md` 전면 재작성 — 섹션별 우선순위 구조로 정리, 한글화, 중복·전략 항목 분리
  - 제거: "Update README opening description" (문서 정리 섹션 중복)
  - 제거: "Align terminology across..." (문서 정리 섹션 전체가 해당 작업)
  - 제거: "Treat root documents as current state..." (원칙 서술, 행동 항목 아님)
  - 보류: "Clarify relationship between Claude tools..." (완료 기준 불명확)
  - 보류: "Clarify whether Notion sync is current..." (결정 선행 필요)
  - 보류: 전략·결정 항목 5개 (Design version tag format 등) → 추후 BLUEPRINT.md 이동
