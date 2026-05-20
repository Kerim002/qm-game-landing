# Frontend Design Skill

## Name
frontend-design

## Summary
A reusable, workspace-scoped skill that guides agents through designing, reviewing, and iterating on frontend UI/UX components and pages. Produces a clear step-by-step design workflow, acceptance criteria, example prompts, and checklist for implementation and review.

## When to use
- You want a consistent, repeatable frontend design process for components, pages, or flows.
- Converting wireframes into Svelte components, or reviewing visual/UI consistency.
- Generating design rationale, accessibility checks, responsive behavior, and test vectors.

## Inputs
- Conversation history or brief describing the UI task (goals, constraints, target audience).
- Optional artifacts: wireframes, screenshots, component file paths, design tokens, or existing CSS.

## Outputs
- A step-by-step design plan (persona, goals, wireframe mapping).
- Component breakdown and responsibilities.
- Accessibility and responsive checklist.
- Implementation suggestions (Svelte component structure, props, CSS approach, testing pointers).
- Example prompts and acceptance criteria.

## Step-by-step workflow (extracted process)
1. Clarify scope and success criteria: target screen(s), breakpoint priorities, accessibility baseline.
2. Identify existing assets: design tokens, components, CSS utilities, images, and routes.
3. Map wireframe to components and states; create a component tree with props and events.
4. Surface design decisions and tradeoffs (layout method, CSS strategy, animations, performance concerns).
5. Produce acceptance criteria: visual, functional, accessibility, and edge cases.
6. Provide implementation plan with file/route targets, sample Svelte snippets, and testing checks.
7. Suggest follow-up tasks: visual QA, cross-browser checks, and performance profiling.

## Decision points / branching logic
- If wireframes exist → map directly to components and generate markup examples.
- If no wireframes → suggest rapid sketch prompts and list required content.
- If accessibility issues are flagged → prioritize fixes and recommend aria attributes, focus management.
- If legacy CSS is present → propose a migration or scoped override strategy.

## Quality criteria and completion checks
- Visual match within acceptable tolerance to provided design (colors, spacing, typography).
- Keyboard navigable and screen-reader friendly for core flows.
- Responsive behavior across defined breakpoints without layout breakage.
- Performance: no layout thrashing, reasonable bundle cost for added components.

## Clarifying questions (ask when needed)
- Which breakpoints and browsers are highest priority?
- Are there existing design tokens or a style system to follow?
- Any strict accessibility requirements (WCAG level, screen reader targets)?
- Should implementation prioritize reusability or a one-off page speed?

## Iteration loop
1. Draft design plan → 2. Implement minimal prototype → 3. Visual + accessibility review → 4. Adjust and polish → 5. Finalize acceptance criteria and tests.

## Example prompts to run this skill
- "Design a responsive hero section for marketing homepage. Include mobile-first breakpoints and accessible CTAs."
- "Review `src/lib/components/navbar.svelte` for accessibility and suggest improvements." 
- "Convert this wireframe image (attach) to a Svelte component tree and props list."

## Suggested file placement
Place this file under `.vscode/skills/frontend-design/SKILL.md` for repository-scoped usage so agents can find it alongside other skills.

## Related customizations
- `frontend-a11y` — focused accessibility checks and remediation steps.
- `svelte-component-boilerplate` — automated generator for Svelte component skeletons.

## Examples (concise)
- Output: Component tree for a hero:
  - Hero (props: title, subtitle, ctaText, ctaHref, imageSrc)
  - DecorativeImage (lazy, alt text required)
  - CTAButton (variant prop, keyboard focus styles)

## Notes for authors
- Keep prompts explicit about breakpoints and acceptance criteria.
- Prefer mobile-first language when requesting responsive behavior.
- Encourage attaching artifacts (screenshots, tokens) to reduce ambiguity.

---

If any part is ambiguous, the agent will ask the four Clarifying questions above and iterate until acceptance criteria are clear.
