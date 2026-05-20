<script>
	const steps = [
		{
			n:    '1',
			icon: '🎮',
			title: 'Pick a Mode',
			desc:  'Jump into ranked PVP or practice solo across dozens of themed categories.',
			color: '#38a5ff',
		},
		{
			n:    '2',
			icon: '❓',
			title: 'Answer Questions',
			desc:  'Race the clock — answer trivia correctly before your opponent does.',
			color: '#ffd94a',
		},
		{
			n:    '3',
			icon: '🗺️',
			title: 'Conquer the Board',
			desc:  'Move your character, capture tiles, and outmaneuver rivals with power-ups.',
			color: '#4ccd6b',
		},
		{
			n:    '4',
			icon: '🏆',
			title: 'Win & Level Up',
			desc:  'Earn trophies, collect coins, and unlock characters as you rise through the ranks.',
			color: '#ff8a3d',
		},
	];
</script>

<section class="how-section" id="how">
	<div class="container">

		<div class="section-head reveal" style="text-align:center;margin-bottom:60px;">
			<span class="eyebrow">How It Works</span>
			<h2 class="section-title">Get started in <span>4 steps</span></h2>
			<p class="section-sub">From zero to Quiz Master in minutes</p>
		</div>

		<div class="steps-row">
			{#each steps as step, i}
				<!-- Arrow connector between steps (not after last) -->
				{#if i > 0}
					<div class="step-arrow reveal" style="transition-delay:{i * 0.1 + 0.1}s" aria-hidden="true">
						<svg width="32" height="16" viewBox="0 0 32 16" fill="none">
							<path d="M0 8 H28 M22 2 L30 8 L22 14" stroke="currentColor" stroke-width="2.5"
								stroke-linecap="round" stroke-linejoin="round"
								stroke-dasharray="60" stroke-dashoffset="60">
								<animate attributeName="stroke-dashoffset" from="60" to="0"
									dur="0.5s" begin="{i * 0.15}s" fill="freeze"/>
							</path>
						</svg>
					</div>
				{/if}

				<div
					class="step-card reveal"
					style="transition-delay:{i * 0.12}s;--step-color:{step.color}"
				>
					<div class="step-top">
						<div class="step-icon-wrap" style="background:color-mix(in srgb, {step.color} 18%, transparent)">
							<span class="step-icon" role="img" aria-label={step.title}>{step.icon}</span>
						</div>
						<span class="step-num">{step.n}</span>
					</div>
					<h3 class="step-title">{step.title}</h3>
					<p class="step-desc">{step.desc}</p>
				</div>
			{/each}
		</div>
	</div>
</section>

<style>
	/* ── SECTION ─────────────────────────── */
	.how-section {
		padding: 96px 0;
		background: var(--blue-pale);
	}

	/* ── STEPS ROW ───────────────────────── */
	.steps-row {
		display: flex;
		align-items: center;
		gap: 0;
	}

	/* ── ARROW ───────────────────────────── */
	.step-arrow {
		flex-shrink: 0;
		color: var(--blue-light);
		padding: 0 4px;
		margin-top: -24px; /* align with icon centre */
	}

	/* ── CARD ────────────────────────────── */
	.step-card {
		flex: 1;
		background: #fff;
		border-radius: var(--radius-md);
		padding: 32px 20px 28px;
		text-align: center;
		border: 2px solid var(--blue-bg);
		box-shadow: var(--shadow-card);
		transition: all 0.26s cubic-bezier(0.34,1.56,0.64,1);
		position: relative;
	}
	.step-card:hover {
		border-color: var(--step-color, var(--blue-light));
		transform: translateY(-8px);
		box-shadow: 0 16px 40px rgba(56,165,255,0.18);
	}

	/* ── STEP TOP ────────────────────────── */
	.step-top {
		position: relative;
		display: inline-block;
		margin-bottom: 18px;
	}
	.step-icon-wrap {
		width: 68px; height: 68px;
		border-radius: 50%;
		display: flex;
		align-items: center;
		justify-content: center;
		transition: transform 0.28s cubic-bezier(0.34,1.56,0.64,1);
	}
	.step-card:hover .step-icon-wrap {
		transform: scale(1.15) rotate(-8deg);
	}
	.step-icon {
		font-size: 2.2rem;
		display: block;
		line-height: 1;
	}
	.step-num {
		position: absolute;
		bottom: -4px; right: -8px;
		width: 24px; height: 24px;
		background: var(--blue);
		color: #fff;
		font-family: 'Fredoka One', cursive;
		font-size: 0.75rem;
		border-radius: 50%;
		display: flex;
		align-items: center;
		justify-content: center;
		box-shadow: 0 2px 6px rgba(56,165,255,0.45);
		animation: step-ring 2.5s ease-out infinite;
	}

	/* ── TEXT ────────────────────────────── */
	.step-title {
		font-family: 'Fredoka One', cursive;
		font-size: 1.15rem;
		color: var(--dark);
		margin-bottom: 10px;
	}
	.step-desc {
		color: var(--muted);
		font-size: 0.9rem;
		font-weight: 600;
		line-height: 1.65;
	}

	/* ── RESPONSIVE ──────────────────────── */
	@media (max-width: 900px) {
		.steps-row   { flex-direction: column; align-items: stretch; gap: 20px; }
		.step-arrow  { display: none; }
		.step-card   { flex: unset; }
	}
	@media (max-width: 480px) {
		.step-card { padding: 24px 16px 22px; }
	}

	@media (prefers-reduced-motion: reduce) {
		.step-card:hover { transform: none; }
		.step-num { animation: none; }
	}
</style>
