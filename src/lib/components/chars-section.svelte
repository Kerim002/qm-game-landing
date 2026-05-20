<script>
	const characters = [
		{
			img:  '/images/penguin_classic.png',
			name: 'Penguin',
			tag:  'The Classic',
			/*
				📸 PLACEHOLDER — Penguin character sprite
				File: /images/penguin_classic.png
				Size: 256 × 256 px · transparent PNG
				──────────────────────────────────────────────────────────────
				Cute cartoon Penguin character, front-facing idle pose:
				· Round egg-shaped body — black back, white belly
				· Small stubby wings at sides, tiny orange webbed feet
				· Big shiny black eyes with white highlights
				· Small orange triangle beak, slightly open (smiling)
				· Soft cel-shaded colouring, 3–4 px black cartoon outline
				· Slight drop shadow beneath feet for grounding
				Style: Kawaii cartoon — think "Stumble Guys" meets LINE sticker
			*/
			placeholder: '🐧',
		},
		{
			img:  '/images/teddy_classic.png',
			name: 'Teddy',
			tag:  'The Bear',
			/*
				📸 PLACEHOLDER — Teddy Bear character sprite
				File: /images/teddy_classic.png
				Size: 256 × 256 px · transparent PNG
				──────────────────────────────────────────────────────────────
				Cute cartoon Teddy Bear, front-facing idle pose:
				· Round caramel-brown body with lighter belly patch
				· Small round ears on top, small snout with pink nose
				· Beady shiny eyes, big friendly smile
				· Holding tiny arms slightly out to the sides
				· Same cartoon outline style as Penguin
			*/
			placeholder: '🐻',
		},
		{
			img:  '/images/panda_classic.png',
			name: 'Panda',
			tag:  'The Scholar',
			/*
				📸 PLACEHOLDER — Panda character sprite
				File: /images/panda_classic.png
				Size: 256 × 256 px · transparent PNG
				──────────────────────────────────────────────────────────────
				Cute cartoon Panda, front-facing idle pose:
				· Black & white round body, black eye patches, black ears
				· Holding a small open book in one paw (Scholar theme)
				· Round glasses optional for the "scholar" personality
				· Cheerful academic expression
				· Same cartoon outline style as Penguin
			*/
			placeholder: '🐼',
		},
		{
			img:  '/images/chick_classic.png',
			name: 'Chick',
			tag:  'The Minimalist',
			/*
				📸 PLACEHOLDER — Chick character sprite
				File: /images/chick_classic.png
				Size: 256 × 256 px · transparent PNG
				──────────────────────────────────────────────────────────────
				Cute cartoon baby Chick, front-facing idle pose:
				· Small fluffy round yellow body, tiny beak
				· Stubby wings, tiny feet
				· Bright eyes, simple clean design (minimalist theme)
				· Maybe a single feather tuft on top of head
				· Same cartoon outline style, lighter/softer feel than others
			*/
			placeholder: '🐥',
		},
		{
			img:  '/images/duckling_classic.png',
			name: 'Duckling',
			tag:  'The Swift',
			/*
				📸 PLACEHOLDER — Duckling character sprite
				File: /images/duckling_classic.png
				Size: 256 × 256 px · transparent PNG
				──────────────────────────────────────────────────────────────
				Cute cartoon Duckling, front-facing pose:
				· Yellow body, flat orange bill, small tail feather
				· Slightly leaning forward as if about to dash (Swift theme)
				· Blue racing stripe or speed lines near body optional
				· Action-forward energetic pose
				· Same cartoon outline style as Penguin
			*/
			placeholder: '🦆',
		},
		{
			img:  '/images/mushroom_classic.png',
			name: 'Mushroom',
			tag:  'The Wild Card',
			/*
				📸 PLACEHOLDER — Mushroom character sprite
				File: /images/mushroom_classic.png
				Size: 256 × 256 px · transparent PNG
				──────────────────────────────────────────────────────────────
				Cute cartoon Mushroom character, front-facing idle pose:
				· Red mushroom cap with white spots (Mario-inspired but original)
				· Round cream/white stem body with little face in the middle
				· Tiny stick arms and stubby feet
				· Mischievous or surprised expression (Wild Card theme)
				· Stars or sparks floating around the cap for extra flair
				· Same cartoon outline style as others
			*/
			placeholder: '🍄',
		},
	];

	// Each character floats at a different speed + phase for organic feel
	const floatParams = [
		{ dur: '3.8s', delay: '0s'    },
		{ dur: '4.2s', delay: '0.5s'  },
		{ dur: '3.5s', delay: '1.1s'  },
		{ dur: '4.6s', delay: '0.3s'  },
		{ dur: '3.9s', delay: '0.8s'  },
		{ dur: '4.1s', delay: '1.4s'  },
	];
</script>

<section class="chars-section web-bg" id="characters">
	<div class="container">

		<div class="section-head reveal" style="text-align:center;margin-bottom:56px;">
			<span class="eyebrow light">Characters</span>
			<h2 class="section-title light">Meet Your <span>Champions</span></h2>
			<p class="section-sub light">Choose your fighter and hit the battle board</p>
		</div>

		<div class="chars-grid reveal">
			{#each characters as char, i}
				<button
					class="char-card"
					type="button"
					aria-label="Select {char.name} — {char.tag}"
					style="--float-dur:{floatParams[i].dur};--float-delay:{floatParams[i].delay};transition-delay:{i * 0.06}s"
				>
					<!-- Sparkle stars that appear on hover -->
					<span class="spark s1" aria-hidden="true">✦</span>
					<span class="spark s2" aria-hidden="true">✦</span>
					<span class="spark s3" aria-hidden="true">✦</span>

					<div class="char-avatar">
						<!--
							Replace this placeholder div with the actual image once created:
							<img src="{char.img}" alt="{char.name}" class="char-img" loading="lazy" />
						-->
						<div class="img-placeholder char-img-placeholder">
							<div class="placeholder-inner">
								<span class="placeholder-icon">{char.placeholder}</span>
								<span class="placeholder-text">{char.name} sprite</span>
								<span class="placeholder-size">256 × 256 px · PNG</span>
							</div>
						</div>
					</div>

					<p class="char-name">{char.name}</p>
					<p class="char-tag">{char.tag}</p>

					<div class="char-hover-badge" aria-hidden="true">Select</div>
				</button>
			{/each}
		</div>
	</div>
</section>

<style>
	/* ── SECTION ─────────────────────────── */
	.chars-section {
		background: var(--blue);
		padding: 96px 0;
	}
	.chars-grid {
		display: grid;
		grid-template-columns: repeat(6, 1fr);
		gap: 18px;
	}

	/* ── CHARACTER CARD ──────────────────── */
	.char-card {
		position: relative;
		background: rgba(255,255,255,0.12);
		border: 1.5px solid rgba(255,255,255,0.22);
		border-radius: var(--radius-md);
		padding: 24px 14px 18px;
		text-align: center;
		cursor: pointer;
		font-family: inherit;
		width: 100%;
		overflow: visible;
		/* continuous floating per card */
		animation: float var(--float-dur, 4s) ease-in-out infinite var(--float-delay, 0s);
		transition:
			background 0.26s cubic-bezier(0.34,1.56,0.64,1),
			border-color 0.26s ease,
			transform 0.26s cubic-bezier(0.34,1.56,0.64,1),
			box-shadow 0.26s ease;
	}
	.char-card:hover {
		background: rgba(255,255,255,0.26);
		border-color: var(--yellow);
		transform: translateY(-14px) scale(1.07);
		box-shadow: 0 20px 48px rgba(0,0,0,0.28), 0 0 0 2px var(--yellow);
		animation-play-state: paused; /* freeze float on hover */
	}

	/* ── AVATAR ──────────────────────────── */
	.char-avatar {
		width: 88px;
		height: 88px;
		margin: 0 auto 14px;
		background: rgba(255,255,255,0.12);
		border-radius: 50%;
		display: flex;
		align-items: center;
		justify-content: center;
		transition: transform 0.28s cubic-bezier(0.34,1.56,0.64,1);
	}
	.char-card:hover .char-avatar {
		transform: scale(1.12) rotate(-5deg);
	}
	.char-img-placeholder {
		width: 72px;
		height: 72px;
		border-radius: 50%;
		border-radius: 50%;
	}
	.char-img {
		width: 72px;
		height: 72px;
		object-fit: contain;
		filter: drop-shadow(0 4px 10px rgba(0,0,0,0.22));
	}

	/* ── NAME / TAG ──────────────────────── */
	.char-name {
		font-family: 'Fredoka One', cursive;
		font-size: 1rem;
		color: #fff;
		margin-bottom: 3px;
	}
	.char-tag {
		font-size: 0.74rem;
		font-weight: 700;
		color: rgba(255,255,255,0.85);
		transition: color 0.2s ease;
	}
	.char-card:hover .char-tag { color: var(--yellow); }

	/* ── HOVER BADGE ─────────────────────── */
	.char-hover-badge {
		position: absolute;
		bottom: -14px;
		left: 50%;
		transform: translateX(-50%) scale(0);
		background: var(--yellow);
		color: var(--dark);
		font-family: 'Fredoka One', cursive;
		font-size: 0.78rem;
		padding: 5px 16px;
		border-radius: 50px;
		box-shadow: 0 4px 12px rgba(0,0,0,0.18);
		white-space: nowrap;
		transition: transform 0.28s cubic-bezier(0.34,1.56,0.64,1);
		pointer-events: none;
	}
	.char-card:hover .char-hover-badge { transform: translateX(-50%) scale(1); }

	/* ── SPARKLE STARS ───────────────────── */
	.spark {
		position: absolute;
		color: var(--yellow);
		font-size: 0.7rem;
		opacity: 0;
		pointer-events: none;
		transition: none;
	}
	.s1 { top:  8px; left:  12px; }
	.s2 { top:  4px; right: 10px; }
	.s3 { bottom: 24px; right: 8px; }

	.char-card:hover .s1 { animation: spark-pop 0.7s ease 0.00s forwards; }
	.char-card:hover .s2 { animation: spark-pop 0.7s ease 0.12s forwards; }
	.char-card:hover .s3 { animation: spark-pop 0.7s ease 0.24s forwards; }

	@keyframes spark-pop {
		0%   { opacity: 0; transform: scale(0) rotate(0deg);   }
		40%  { opacity: 1; transform: scale(1.6) rotate(120deg); }
		100% { opacity: 0; transform: scale(0) rotate(240deg); }
	}

	/* ── RESPONSIVE ──────────────────────── */
	@media (max-width: 1060px) { .chars-grid { grid-template-columns: repeat(3, 1fr); } }
	@media (max-width: 480px)  { .chars-grid { grid-template-columns: repeat(2, 1fr); } }

	@media (prefers-reduced-motion: reduce) {
		.char-card { animation: none; }
		.char-card:hover { transform: none; }
	}
</style>
