<script lang="ts">
	import { onMount } from 'svelte';

	const stats = [
		{ target: 10000, format: (n:any) => `${n}`, label: 'Players',    decimal: false, icon: '👥' },
		{ target: 6, format: (n:any) => `${n}`,  label: 'Subjects', decimal: false, icon: '📚' },
		// { target: 4.8, format: (n:any) => `${n} ★`, label: 'App Rating', decimal: true,  icon: '⭐' },
		{ target: null,format: () => 'Free',   label: 'To Play',   decimal: false, icon: '🎁' },
	];

	let counts = $state([0, 0, 0.0, null]);
	let triggered = $state(false);

	onMount(() => {
		const bar = document.querySelector('.stats-bar');
		if (!bar) return;

		const obs = new IntersectionObserver(([entry]) => {
			if (!entry.isIntersecting || triggered) return;
			triggered = true;

			stats.forEach((s, i) => {
				if (s.target === null) return;
				const dur = 1700;
				const t0 = performance.now();

				const tick = (now:any) => {
					const p   = Math.min((now - t0) / dur, 1);
					const ease = 1 - (1 - p) ** 3;  // ease-out cubic
					counts[i] = s.decimal
						? parseFloat((s.target * ease).toFixed(1))
						: Math.round(s.target * ease);
					if (p < 1) requestAnimationFrame(tick);
				};

				setTimeout(() => requestAnimationFrame(tick), i * 200);
			});

			obs.disconnect();
		}, { threshold: 0.4 });

		obs.observe(bar);
		return () => obs.disconnect();
	});
</script>

<div class="stats-bar" id="stats" role="list" aria-label="Game statistics">
	{#each stats as stat, i}
		<div class="stat reveal" style="transition-delay:{i * 0.1}s" role="listitem">
			<span class="stat-icon" aria-hidden="true">{stat.icon}</span>
			<span class="stat-n">{stat.format(counts[i] ?? 0)}</span>
			<span class="stat-l">{stat.label}</span>
		</div>
		{#if i < stats.length - 1}
			<div class="stat-sep" aria-hidden="true"></div>
		{/if}
	{/each}
</div>

<style>
	.stats-bar {
		background: var(--blue-bg);
		border-bottom: 2px solid rgba(56,165,255,0.12);
		display: flex;
		align-items: center;
		justify-content: center;
		flex-wrap: wrap;
		padding: 28px 24px;
	}
	.stat {
		display: flex;
		flex-direction: column;
		align-items: center;
		padding: 0 44px;
		gap: 3px;
	}
	.stat-icon {
		font-size: 1.3rem;
		margin-bottom: 2px;
		display: block;
	}
	.stat-n {
		font-family: 'Fredoka One', cursive;
		font-size: 1.9rem;
		color: var(--blue);
		line-height: 1;
		font-variant-numeric: tabular-nums;
	}
	.stat-l {
		font-size: 0.72rem;
		font-weight: 700;
		color: var(--muted);
		text-transform: uppercase;
		letter-spacing: 1px;
	}
	.stat-sep {
		width: 1px;
		height: 48px;
		background: rgba(56,165,255,0.2);
		flex-shrink: 0;
	}

	@media (max-width: 600px) {
		.stat { padding: 0 20px; }
		.stat-sep:nth-child(6) { display: none; } /* hide 3rd separator on 2-col wrap */
	}
</style>
