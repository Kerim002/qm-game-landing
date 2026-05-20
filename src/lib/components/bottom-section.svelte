<script>
	// Pre-defined particle positions to avoid SSR/hydration mismatch
	const particles = [
		{ x: '8%',  y: '20%', size: '14px', delay: '0.0s', dur: '6s'  },
		{ x: '18%', y: '70%', size: '10px', delay: '0.7s', dur: '7s'  },
		{ x: '30%', y: '15%', size: '18px', delay: '1.4s', dur: '5s'  },
		{ x: '45%', y: '80%', size: '12px', delay: '0.3s', dur: '8s'  },
		{ x: '58%', y: '25%', size: '10px', delay: '1.1s', dur: '6.5s'},
		{ x: '68%', y: '65%', size: '16px', delay: '0.5s', dur: '7.5s'},
		{ x: '80%', y: '18%', size: '13px', delay: '1.8s', dur: '5.5s'},
		{ x: '90%', y: '75%', size: '11px', delay: '0.9s', dur: '9s'  },
	];
</script>

<section class="cta-section web-bg">

	<!-- Floating star particles -->
	{#each particles as p}
		<span
			class="cta-particle"
			aria-hidden="true"
			style="left:{p.x};top:{p.y};font-size:{p.size};
			       animation-delay:{p.delay};animation-duration:{p.dur};"
		>✦</span>
	{/each}

	<div class="cta-inner container reveal">

		<div class="cta-badge">🚀 Join the battle today</div>

		<h2>Ready to <span>Battle?</span></h2>
		<p>
			Join 500,000+ players competing in real-time trivia battles. It's
			free — no excuses.
		</p>

		<div class="cta-btns">
			<a href="#top" class="btn btn-white btn-lg btn-glow">
				<svg width="13" height="13" viewBox="0 0 12 12" fill="currentColor" aria-hidden="true"><polygon points="2,1 11,6 2,11"/></svg>
				Play Now — Free
			</a>
			<a href="#" class="btn btn-ghost btn-lg">📱 Download App</a>
		</div>

		<!-- Character decorations flanking the CTA -->
		<div class="cta-decor" aria-hidden="true">

			<!--
				📸 PLACEHOLDER — CTA Left character (Penguin)
				File: /images/penguin_classic.png (same file as hero)
				Size: 130 × 150 px (will be displayed at this size)
				──────────────────────────────────────────────────────────────
				Same Penguin character sprite as described in top-section.svelte,
				but displayed here mirrored (CSS scaleX(-1)) so it faces right
				toward the CTA text. No additional art needed — reuse the same PNG.
			-->
			<div class="img-placeholder decor-placeholder decor-left">
				<div class="placeholder-inner">
					<span class="placeholder-icon">🐧</span>
					<span class="placeholder-text">Penguin — reuse /images/penguin_classic.png (mirrored via CSS)</span>
				</div>
			</div>

			<!--
				📸 PLACEHOLDER — CTA Right character (Panda)
				File: /images/panda_classic.png (same file as hero)
				Size: 130 × 150 px (will be displayed at this size)
				──────────────────────────────────────────────────────────────
				Same Panda character sprite as described in top-section.svelte.
				Displayed facing left toward the CTA text. No additional art needed.
			-->
			<div class="img-placeholder decor-placeholder decor-right">
				<div class="placeholder-inner">
					<span class="placeholder-icon">🐼</span>
					<span class="placeholder-text">Panda — reuse /images/panda_classic.png</span>
				</div>
			</div>
		</div>
	</div>
</section>

<style>
	/* ── SECTION ─────────────────────────── */
	.cta-section {
		background: var(--blue);
		padding: 120px 24px;
		position: relative;
		overflow: hidden;
	}

	/* ── FLOATING PARTICLES ──────────────── */
	.cta-particle {
		position: absolute;
		color: rgba(255,255,255,0.22);
		pointer-events: none;
		animation: cta-stars linear infinite;
		z-index: 0;
	}

	/* ── INNER ───────────────────────────── */
	.cta-inner {
		max-width: 680px;
		margin: 0 auto;
		text-align: center;
		position: relative;
		z-index: 1;
	}

	/* ── BADGE ───────────────────────────── */
	.cta-badge {
		display: inline-block;
		background: rgba(255,255,255,0.16);
		color: #fff;
		font-size: 0.8rem;
		font-weight: 700;
		padding: 7px 20px;
		border-radius: 50px;
		border: 1.5px solid rgba(255,255,255,0.28);
		margin-bottom: 20px;
		letter-spacing: 0.5px;
	}

	/* ── HEADING ─────────────────────────── */
	.cta-inner h2 {
		font-family: 'Fredoka One', cursive;
		font-size: clamp(2.4rem, 5vw, 3.6rem);
		color: #fff;
		margin-bottom: 16px;
		line-height: 1.1;
	}
	.cta-inner h2 span { color: var(--yellow); }

	.cta-inner p {
		color: rgba(255,255,255,0.88);
		font-weight: 600;
		font-size: 1.05rem;
		line-height: 1.68;
		margin-bottom: 40px;
		max-width: 520px;
		margin-left: auto;
		margin-right: auto;
	}

	/* ── BUTTONS ─────────────────────────── */
	.cta-btns {
		display: flex;
		gap: 14px;
		justify-content: center;
		flex-wrap: wrap;
	}

	/* ── CHARACTER DECOR ─────────────────── */
	.cta-decor {
		position: absolute;
		bottom: -100px;
		left: 0; right: 0;
		pointer-events: none;
	}
	.decor-placeholder {
		position: absolute;
		bottom: 0;
		width: 115px;
		height: 140px;
		border-radius: 12px;
	}
	.decor-left  { left: -160px; transform: scaleX(-1); animation: float-alt 4s ease-in-out infinite; }
	.decor-right { right: -160px; animation: float 4.5s ease-in-out infinite 0.5s; }

	@media (max-width: 900px) {
		.decor-placeholder { display: none; }
	}
</style>
