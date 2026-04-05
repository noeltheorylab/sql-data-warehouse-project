# Project Color System

## Overview
A consistent, scalable color system for labeling Epics across all projects.
Colors progress from cool (neutral/setup) to warm (active/output).
This system supports up to 9 Epics per project.

## Color Sequence

| Epic | Color | Hex | Purpose |
|------|-------|-----|---------|
| Epic 1 | Gray | `#888780` | Setup, neutral, pre-work |
| Epic 2 | Blue | `#378ADD` | Early planning, cool |
| Epic 3 | Purple | `#7F77DD` | Design, structural |
| Epic 4 | Teal | `#1D9E75` | Transitional, mid-stage |
| Epic 5 | Coral | `#D85A30` | Warming, active |
| Epic 6 | Amber | `#BA7517` | Warm, output-focused |
| Epic 7 | Green | `#639922` | Results, delivery |
| Epic 8 | Pink | `#D4537E` | Extended work |
| Epic 9 | Red | `#E24B4A` | Final, critical |

## Naming Convention
Labels follow this exact format:
`Epic {number} - {Epic Name}`

Examples:
- `Epic 1 - Requirements Analysis`
- `Epic 4 - Build Bronze Layer`

## Issue Title Convention
- Issue titles stay clean — no Epic prefix in the title
- Epic context is provided by the label only
- Duplicate task titles are disambiguated with a layer suffix

Example:
- Title: `Commit Code in Git Repo - Bronze Layer`
- Label: `Epic 4 - Build Bronze Layer`

## Applying to Future Projects
1. Create labels using the hex codes above in sequence
2. Assign labels to issues based on Epic number
3. Keep issue titles clean and descriptive
4. Rename any duplicate titles with a disambiguating suffix

