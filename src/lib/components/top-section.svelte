<script>
	import { onMount } from 'svelte';
	let loaded = $state(false);

	onMount(() => {
		const raf = requestAnimationFrame(() => { loaded = true; });
		return () => cancelAnimationFrame(raf);
	});
</script>

<section class="hero web-bg" id="top">

	<!-- Slowly drifting colour orbs — add depth to the flat blue background -->
	<div class="orb orb-1" aria-hidden="true"></div>
	<div class="orb orb-2" aria-hidden="true"></div>
	<div class="orb orb-3" aria-hidden="true"></div>

	<div class="hero-wrap container">

		<!-- ══ LEFT — copy ══ -->
		<div class="hero-left">

			<div class="hero-badge" class:in={loaded}>
				<span class="live-dot" aria-hidden="true"></span>
				🎮 Free · Web · iOS · Android
			</div>

			<h1>
				<span class="h1-word" class:in={loaded} style="--d:0.12s">Quiz</span>
				<span class="h1-word h1-accent" class:in={loaded} style="--d:0.26s">Masters</span>
			</h1>

			<p class="tagline">
				<span class="tw" class:in={loaded} style="--d:0.42s">More</span>
				<span class="tw" class:in={loaded} style="--d:0.50s">than</span>
				<span class="tw" class:in={loaded} style="--d:0.58s">just</span>
				<span class="tw" class:in={loaded} style="--d:0.66s">trivia.</span>
				<span class="tw tw-accent" class:in={loaded} style="--d:0.78s">It's tactical.</span>
			</p>

			<div class="hero-btns" class:in={loaded} style="--d:0.92s">
				<a href="#features" class="btn btn-white btn-lg btn-glow">
					<svg width="13" height="13" viewBox="0 0 12 12" fill="currentColor" aria-hidden="true"><polygon points="2,1 11,6 2,11"/></svg>
					Play Now — Free
				</a>
				<a href="#" class="btn btn-ghost btn-lg">📱 Download App</a>
			</div>

			<div class="store-row" class:in={loaded} style="--d:1.06s">
				<a href="#" class="store-chip">
					<svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true">
						<path d="M18.71 19.5c-.83 1.24-1.71 2.45-3.05 2.47-1.34.03-1.77-.79-3.29-.79-1.53 0-2 .77-3.27.82-1.31.05-2.3-1.32-3.14-2.53C4.25 17 2.94 12.45 4.7 9.39c.87-1.52 2.43-2.48 4.12-2.51 1.28-.02 2.5.87 3.29.87.78 0 2.26-1.07 3.8-.91.65.03 2.47.26 3.64 1.98-.09.06-2.17 1.28-2.15 3.81.03 3.02 2.65 4.03 2.68 4.04-.03.07-.42 1.44-1.38 2.83M13 3.5c.73-.83 1.94-1.46 2.94-1.5.13 1.17-.34 2.35-1.04 3.19-.69.85-1.83 1.51-2.95 1.42-.15-1.15.41-2.35 1.05-3.11z"/>
					</svg>
					<span>
						<small>Download on the</small>
						App Store
					</span>
				</a>
				<a href="#" class="store-chip">
					<svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true">
						<path d="M3.18 23.76c.3.17.64.24.99.19l13.12-13.12L13.41 7l-10.23 16zm17.52-13.5-2.84-1.63-3.27 3.27 3.27 3.26 2.87-1.65c.82-.47.82-1.78-.03-2.25zM2.18.75C2.06 1.01 2 1.3 2 1.62v20.76c0 .32.06.61.18.87L14.77 11 2.18.75zm14.89 1.6L4.14.19c-.36-.06-.7.01-1 .19L15.95 13.1l4.88-4.88-3.76-5.87z"/>
					</svg>
					<span>
						<small>Get it on</small>
						Google Play
					</span>
				</a>
			</div>
		</div>

		<!-- ══ RIGHT — phone mockup ══ -->
		<div class="hero-right" class:in={loaded}>

			<!--
				📸 PLACEHOLDER — Left floating character
				File: /images/penguin_classic.png
				Size: 140 × 160px · transparent PNG
				──────────────────────────────────────
				Draw a cute cartoon Penguin character:
				· Round egg-shaped body, black back, white belly
				· Small stubby wings at sides, tiny orange feet
				· Big shiny eyes, small orange triangle beak
				· Cheerful excited pose — slightly tilted left, arms raised
				· Same character visible on the in-game board as "Player 1"
				· 3–4 px black cartoon outline, soft cel-shaded colours
				· NO background (transparent PNG)
				Style reference: Stumble Guys / Among Us meets Japanese sticker art
			-->
			<div class="float-char fc-left" aria-hidden="true">
				<div class="img-placeholder" style="width:100px;height:120px;border-radius:14px;">
					<div class="placeholder-inner">
						<span class="placeholder-icon">🐧</span>
						<span class="placeholder-text">Penguin character — excited pose, tilted left</span>
						<span class="placeholder-size">140 × 160 px · PNG transparent</span>
					</div>
				</div>
			</div>

			<!--
				📸 PLACEHOLDER — Right floating character
				File: /images/panda_classic.png (hero variant)
				Size: 120 × 140px · transparent PNG
				──────────────────────────────────────
				Draw a cute cartoon Panda character:
				· Round body, black & white markings, black eye patches
				· Small rounded ears on top of head
				· Holding a shiny trophy cup in one paw, giving thumbs-up with other
				· Slightly tilted right, confident victorious expression
				· Same 3–4 px cartoon outline as Penguin above
				· NO background (transparent PNG)
			-->
			<div class="float-char fc-right" aria-hidden="true">
				<div class="img-placeholder" style="width:90px;height:110px;border-radius:14px;">
					<div class="placeholder-inner">
						<span class="placeholder-icon">🐼</span>
						<span class="placeholder-text">Panda — holding trophy, tilted right</span>
						<span class="placeholder-size">120 × 140 px · PNG transparent</span>
					</div>
				</div>
			</div>

			<!-- Phone shell with notch -->
			<div class="phone-wrap">
				<div class="phone-shell">
					<div class="phone-notch" aria-hidden="true">
						<div class="phone-camera"></div>
					</div>
					<div class="phone-screen">

						<!--
							📸 PLACEHOLDER — Hero gameplay screenshot (fills phone screen)
							File: /images/hero.jpg
							Size: 390 × 760 px · JPEG, portrait
							──────────────────────────────────────
							Full in-game battle board screenshot:
							· Dark navy blue (#0d1a2e) background
							· 6 × 6 grid of rounded-corner square tiles, each ~70px:
							  – Blue tiles  = penguin player territory (3–4 tiles claimed)
							  – Yellow tiles = opponent territory (2–3 tiles)
							  – Grey/white   = neutral unclaimed tiles
							· Penguin avatar (small, ~40px sprite) standing on a blue tile
							· Top bar: left side = penguin avatar + health bar (blue),
							           right side = opponent avatar (teddy) + health bar (red)
							           centre = round timer counting down (e.g. "12")
							· Bottom: white rounded card popup — question text
							  "What is the capital of France?" + 4 answer buttons (A B C D)
							  with a thin blue progress timer bar below the question
							· XP counter "+ 80 XP" floating in gold near top-centre
							Style: Vibrant mobile-game UI, high saturation, bold fonts
						-->
						<div class="img-placeholder" style="border-radius:0;border:none;">
							<div class="placeholder-inner">
								<span class="placeholder-icon">🎮</span>
								<span class="placeholder-text">Game board — tiles, avatars, trivia question popup, timer</span>
								<span class="placeholder-size">390 × 760 px · JPEG portrait</span>
							</div>
						</div>

					</div>
				</div>

				<!-- Floating UI badges around the phone -->
				<div class="phone-badge pb-top">🏆 +120 XP</div>
				<div class="phone-badge pb-mid">✅ Correct!</div>
				<div class="phone-badge pb-bot">⚡ 2× Streak</div>

				<!-- Glow cast below phone -->
				<div class="phone-glow" aria-hidden="true"></div>
			</div>
		</div>
	</div>

	<!-- Animated scroll cue -->
	<a href="#stats" class="scroll-hint" aria-label="Scroll to stats">
		<div class="scroll-dot"></div>
	</a>
</section>

<style>
	/* ── SECTION ────────────────────────── */
	.hero {
		background: var(--blue);
		min-height: 640px;
		position: relative;
		overflow: hidden;
	}
	.hero-wrap {
		display: grid;
		grid-template-columns: 1fr 1fr;
		align-items: center;
		gap: 48px;
		padding-top: 80px;
		padding-bottom: 100px;
		position: relative;
		z-index: 1;
	}

	/* ── BACKGROUND ORBS ─────────────────── */
	.orb {
		position: absolute;
		border-radius: 50%;
		pointer-events: none;
		filter: blur(72px);
		z-index: 0;
	}
	.orb-1 {
		width: 500px; height: 500px;
		background: rgba(255,255,255,0.07);
		top: -160px; right: -120px;
		animation: orb-drift 14s ease-in-out infinite;
	}
	.orb-2 {
		width: 340px; height: 340px;
		background: rgba(255,217,74,0.10);
		bottom: -60px; left: -90px;
		animation: orb-drift-2 18s ease-in-out infinite;
	}
	.orb-3 {
		width: 240px; height: 240px;
		background: rgba(76,205,107,0.09);
		top: 55%; left: 38%;
		animation: orb-drift 22s ease-in-out infinite reverse;
	}

	/* ── BADGE ───────────────────────────── */
	.hero-badge {
		display: inline-flex;
		align-items: center;
		gap: 9px;
		background: rgba(255,255,255,0.15);
		color: rgba(255,255,255,0.95);
		font-size: 0.8rem;
		font-weight: 700;
		padding: 8px 20px;
		border-radius: 50px;
		border: 1.5px solid rgba(255,255,255,0.28);
		margin-bottom: 26px;
		opacity: 0;
		transform: translateY(-22px);
		transition: opacity 0.5s ease var(--d, 0.05s),
		            transform 0.5s cubic-bezier(0.34,1.56,0.64,1) var(--d, 0.05s);
	}
	.hero-badge.in { opacity: 1; transform: translateY(0); }

	.live-dot {
		width: 8px; height: 8px;
		background: var(--green);
		border-radius: 50%;
		flex-shrink: 0;
		animation: live-dot 2s ease-out infinite;
	}

	/* ── HEADING ─────────────────────────── */
	h1 {
		font-family: 'Fredoka One', cursive;
		font-size: clamp(4rem, 7vw, 6.4rem);
		line-height: 0.90;
		margin-bottom: 20px;
		color: #fff;
	}
	.h1-word {
		display: block;
		opacity: 0;
		transform: translateX(-60px);
		transition: opacity 0.55s ease var(--d, 0s),
		            transform 0.55s cubic-bezier(0.22,1,0.36,1) var(--d, 0s);
	}
	.h1-word.in { opacity: 1; transform: translateX(0); }
	.h1-accent  { color: var(--yellow); }

	/* ── TAGLINE ─────────────────────────── */
	.tagline {
		display: flex;
		flex-wrap: wrap;
		gap: 6px;
		font-size: clamp(0.82rem, 1.4vw, 0.96rem);
		font-weight: 800;
		letter-spacing: 2px;
		text-transform: uppercase;
		margin-bottom: 38px;
	}
	.tw {
		display: inline-block;
		color: rgba(255,255,255,0.78);
		opacity: 0;
		transform: translateY(18px);
		transition: opacity 0.38s ease var(--d, 0s),
		            transform 0.38s cubic-bezier(0.34,1.56,0.64,1) var(--d, 0s);
	}
	.tw.in    { opacity: 1; transform: translateY(0); }
	.tw-accent { color: var(--yellow); }

	/* ── BUTTONS ─────────────────────────── */
	.hero-btns {
		display: flex;
		flex-wrap: wrap;
		gap: 12px;
		margin-bottom: 22px;
		opacity: 0;
		transform: translateY(18px);
		transition: opacity 0.4s ease var(--d, 0s), transform 0.4s ease var(--d, 0s);
	}
	.hero-btns.in { opacity: 1; transform: translateY(0); }

	/* ── STORE ROW ───────────────────────── */
	.store-row {
		display: flex;
		flex-wrap: wrap;
		gap: 10px;
		opacity: 0;
		transform: translateY(14px);
		transition: opacity 0.4s ease var(--d, 0s), transform 0.4s ease var(--d, 0s);
	}
	.store-row.in { opacity: 1; transform: translateY(0); }
	.store-chip {
		display: inline-flex;
		align-items: center;
		gap: 10px;
		background: rgba(255,255,255,0.12);
		color: #fff;
		border: 1.5px solid rgba(255,255,255,0.26);
		padding: 10px 18px;
		border-radius: 12px;
		text-decoration: none;
		font-weight: 700;
		transition: all 0.22s cubic-bezier(0.34,1.56,0.64,1);
	}
	.store-chip small {
		display: block;
		font-size: 0.62rem;
		font-weight: 600;
		opacity: 0.7;
		text-transform: uppercase;
		letter-spacing: 0.5px;
		margin-bottom: 1px;
	}
	.store-chip span { display: flex; flex-direction: column; font-size: 0.88rem; }
	.store-chip:hover {
		background: rgba(255,255,255,0.22);
		border-color: rgba(255,255,255,0.5);
		transform: translateY(-3px) scale(1.02);
	}

	/* ── RIGHT COLUMN ────────────────────── */
	.hero-right {
		display: flex;
		justify-content: center;
		align-items: center;
		position: relative;
		opacity: 0;
		transform: translateX(60px);
		transition: opacity 0.7s ease 0.18s,
		            transform 0.7s cubic-bezier(0.22,1,0.36,1) 0.18s;
	}
	.hero-right.in { opacity: 1; transform: translateX(0); }

	/* ── FLOATING CHARACTERS ─────────────── */
	.float-char {
		position: absolute;
		z-index: 2;
	}
	.fc-left {
		left: -30px;
		bottom: 70px;
		animation: float-alt 4.2s ease-in-out infinite 0.4s;
	}
	.fc-right {
		right: -20px;
		top: 50px;
		animation: float 3.8s ease-in-out infinite 1s;
	}

	/* ── PHONE MOCKUP ────────────────────── */
	.phone-wrap { position: relative; z-index: 1; }

	.phone-shell {
		width: 255px;
		height: 530px;
		background: #0d1117;
		border-radius: 46px;
		padding: 12px;
		position: relative;
		box-shadow:
			0 0 0 1.5px rgba(255,255,255,0.11),
			0 50px 100px rgba(0,0,0,0.55),
			inset 0 1px 0 rgba(255,255,255,0.07);
		animation: float-slow 5.5s ease-in-out infinite;
	}
	.phone-notch {
		position: absolute;
		top: 0; left: 50%;
		transform: translateX(-50%);
		width: 90px; height: 24px;
		background: #0d1117;
		border-radius: 0 0 18px 18px;
		z-index: 10;
		display: flex;
		align-items: center;
		justify-content: center;
	}
	.phone-camera {
		width: 10px; height: 10px;
		background: #1c2030;
		border-radius: 50%;
		border: 1px solid rgba(255,255,255,0.05);
	}
	.phone-screen {
		width: 100%;
		height: 100%;
		border-radius: 36px;
		overflow: hidden;
		background: var(--blue-dark);
	}

	/* ── PHONE BADGES ────────────────────── */
	.phone-badge {
		position: absolute;
		background: #fff;
		color: var(--dark);
		font-size: 0.76rem;
		font-weight: 800;
		padding: 8px 14px;
		border-radius: 50px;
		box-shadow: 0 4px 20px rgba(0,0,0,0.24);
		white-space: nowrap;
		animation: badge-float 3s ease-in-out infinite;
	}
	.pb-top  { top: 36px;   right: -72px; animation-delay: 0.2s; }
	.pb-mid  { bottom: 110px; right: -76px; animation-delay: 1.1s; }
	.pb-bot  { bottom: 46px; left: -82px;  animation-delay: 0.65s; }

	/* ── PHONE GLOW ──────────────────────── */
	.phone-glow {
		position: absolute;
		bottom: -50px; left: 50%;
		transform: translateX(-50%);
		width: 200px; height: 70px;
		background: rgba(56,165,255,0.38);
		filter: blur(40px);
		border-radius: 50%;
		pointer-events: none;
		animation: float-slow 5.5s ease-in-out infinite;
	}

	/* ── SCROLL HINT ─────────────────────── */
	.scroll-hint {
		position: absolute;
		bottom: 22px; left: 50%;
		transform: translateX(-50%);
		z-index: 2;
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	.scroll-dot {
		width: 6px; height: 6px;
		background: rgba(255,255,255,0.65);
		border-radius: 50%;
		animation: scroll-bounce 1.6s ease-in-out infinite;
	}

	/* ── RESPONSIVE ──────────────────────── */
	@media (max-width: 900px) {
		.hero-wrap {
			grid-template-columns: 1fr;
			text-align: center;
			padding-bottom: 60px;
		}
		.hero-left { display: flex; flex-direction: column; align-items: center; }
		.hero-btns, .store-row { justify-content: center; }
		.hero-right { margin-top: 24px; }
		.float-char { display: none; }
		.pb-top  { right: -50px; }
		.pb-mid  { right: -54px; }
		.pb-bot  { left: -60px; }
	}
	@media (max-width: 540px) {
		.phone-shell { width: 215px; height: 450px; }
		.phone-badge { display: none; }
		.hero-wrap   { padding-top: 52px; padding-bottom: 52px; }
	}
</style>
