# Project Standards

## Overview
This document defines the standards, conventions, and systems used across all projects.
It serves as a reference for internal organization and external portfolio presentation.

---

## 1. Color System

### Philosophy
Colors progress from cool (neutral/setup) to warm (active/output).
Supports up to 9 Epics per project.

### Color Sequence

| Epic | Color | Hex | Purpose |
|------|-------|-----|---------|
| Epic 1 | Gray | #888780 | Setup, neutral, pre-work |
| Epic 2 | Blue | #378ADD | Early planning, cool |
| Epic 3 | Purple | #7F77DD | Design, structural |
| Epic 4 | Teal | #1D9E75 | Transitional, mid-stage |
| Epic 5 | Coral | #D85A30 | Warming, active |
| Epic 6 | Amber | #BA7517 | Warm, output-focused |
| Epic 7 | Green | #639922 | Results, delivery |
| Epic 8 | Pink | #D4537E | Extended work |
| Epic 9 | Red | #E24B4A | Final, critical |

---

## 2. Naming Conventions

### Epic Labels
Format: Epic {N} - {Name}

Examples:
- Epic 1 - Requirements Analysis
- Epic 4 - Build Bronze Layer

### Parent Issue Titles
Format: {gap number} - {Name}

Gap numbering increments by 10 to allow decimal insertions between existing Epics.

Examples:
- 10 - Requirements Analysis
- 20 - Design Data Architecture
- 30 - Project Initialization
- 40 - Build Bronze Layer
- 50 - Build Silver Layer
- 60 - Build Gold Layer

Future insertion example:
- 45 - New Epic inserted between Bronze and Silver layers

### Sub-issue Titles
Clean descriptive titles with no numeric prefix.

Examples:
- Analyse and Understand the Requirements
- Coding: Data Ingestion

### Duplicate Title Convention
When identical task titles exist across multiple Epics, append layer suffix.

Examples:
- Commit Code in Git Repo - Bronze Layer
- Commit Code in Git Repo - Silver Layer
- Commit Code in Git Repo - Gold Layer

---

## 3. Numbering System

### When to Use Sequential + Decimals 1, 2, 3...
- Portfolio projects
- Small teams
- Public-facing work where clarity matters

### When to Use Gap Numbering 10, 20, 30...
- Enterprise environments
- Large teams
- SQL and data engineering projects
- Complex projects with frequent Epic insertions

---

## 4. GitHub Project Views

| View Name | Type | Purpose |
|-----------|------|---------|
| Epic Overview | Board | High level Epic progress |
| Task Table | Table | Detailed task tracking |
| Roadmap | Roadmap | Timeline, add when dates are available |

### View Configuration
- Epic Overview: Slice by Labels, Board view
- Task Table: Slice by Labels, Group by Parent issue, Table view

---

## 5. GitHub Hierarchy

Epic Label (organizational tag)
- Parent Issue (groups related sub-issues)
-- Sub-issue (actual work item)
--- Task (checklist inside issue body)

---

## 6. Applying to Future Projects
1. Create Epic labels using color sequence above
2. Create parent issues using gap numbering
3. Create sub-issues with clean descriptive titles
4. Assign labels to all issues
5. Link sub-issues to correct parent
6. Add all issues to project board
7. Configure Epic Overview and Task Table views
