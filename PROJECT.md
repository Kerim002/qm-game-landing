# QuizMasters — Project Handoff

> Give this file to Claude at the start of a session. Claude fills every
> `<!-- FILL: ... -->` block below, then you request changes. **Scope rule
> below is binding — only the `/` (home) page changes; all other pages stay
> exactly as they are.**

---

## 1. Open & run

SvelteKit + Svelte 5, Vite, static/node adapter. No DB, no backend — a
static marketing site.

```bash
npm install
npm run dev      # http://localhost:5173
npm run build    # production build
npm run preview  # serve the build
```

---

## 2. Where things live

| What | Path |
|------|------|
| Home page (`/`) — composes the sections | `src/routes/+page.svelte` |
| Home page sections (the editable content) | `src/lib/components/*.svelte` |
| Store links (Google Play / App Store) | `src/lib/constants/links.ts` |
| SEO / meta tags | `src/lib/components/SEO.svelte` |
| Global styles | `src/app.css` |
| Static assets (images, icons, ads.txt) | `static/` |
| **Legal pages — DO NOT TOUCH** | `src/routes/privacy-policy/`, `src/routes/terms-of-use/`, `src/routes/data-deletion/` |

Home page section components (render order):
`navbar` → `top-section` → `stats-bar` → `video-section` →
`features-section` → `chars-section` → `how-section` → `faq-section` →
`bottom-section` → `footer`.

---

## 3. SCOPE RULE (binding)

- **Only edit the `/` home page**: `src/routes/+page.svelte` and the section
  components it imports from `src/lib/components/`.
- **Do NOT change** `privacy-policy/`, `terms-of-use/`, `data-deletion/`, or
  their content/naming. Same status.
- Shared files (`SEO.svelte`, `links.ts`, `app.css`, `navbar`, `footer`) are
  used by every page — if a change there would alter a legal page, flag it
  first instead of editing.

---

## 4. FILL ON OPEN (Claude completes this section)

**Naming / branding currently in use**
<!-- FILL: product name, tagline, and any renamed terms as they appear in the
     home page components today. List old→new if a rename is in progress. -->

**Home page copy inventory** — for each section, one line: what it says now.
<!-- FILL: navbar — ... -->
<!-- FILL: top-section — ... -->
<!-- FILL: stats-bar — ... -->
<!-- FILL: video-section — ... -->
<!-- FILL: features-section — ... -->
<!-- FILL: chars-section — ... -->
<!-- FILL: how-section — ... -->
<!-- FILL: faq-section — ... -->
<!-- FILL: bottom-section — ... -->
<!-- FILL: footer — ... -->

**Store links / external URLs**
<!-- FILL: current values from links.ts and any hardcoded URLs. -->

**Open questions before I change anything**
<!-- FILL: anything ambiguous about the requested rename/change. -->

---

## 5. Request format (you → Claude)

> "On the `/` page, change X to Y." Claude edits only the relevant
> `src/lib/components/*.svelte` (or `+page.svelte`), leaves every other page
> untouched, and updates section 4 to match.
