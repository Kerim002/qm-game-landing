<script lang="ts">
	const features = [
		{
			eyebrow: 'PVP Mode',
			badge:   '⚔️ Live Battles',
			title:   'Real-Time PVP Trivia Battles!',
			desc:    'Challenge players from around the world in live head-to-head duels. Answer faster and smarter to conquer the board and defeat your opponent in real time.',
			pills:   ['⚡ Real-time', '🌍 Global players', '🏆 Ranked matches'],
			reverse: false,
			placeholder: { icon: '⚔️', label: 'PVP battle screen', size: '390 × 760 px · JPEG portrait' },
			imgFile: '/images/pvp.jpg',
		},
		{
			eyebrow: 'Knowledge',
			badge:   '🧠 New daily',
			title:   'Endless Knowledge — New Questions Daily!',
			desc:    'With six of subjects and fresh questions added every day, no two matches are ever the same. From geography to trivia — test every corner of your mind.',
			pills:   ['📚 6 subjects', '🗓️ Daily updates', '🌐 Select subjects'],
			reverse: true,
			placeholder: { icon: '🧠', label: 'Subject grid screen', size: '390 × 760 px · JPEG portrait' },
			imgFile: '/images/questions.jpg',
		},
		{
			eyebrow: 'Strategy',
			badge:   '🛒 Power-ups',
			title:   'Tactical Board — Master the Shop!',
			desc:    "Coins aren't just for show. Buy power-ups mid-battle: Clue Flower removes wrong answers, Teleport lets you jump tiles, and Heal restores your HP and so many other skills.",
			pills:   ['🌸 Clue Flower', '✨ Teleport', '💊 Heal'],
			reverse: false,
			placeholder: { icon: '🛒', label: 'In-game shop screen', size: '390 × 760 px · JPEG portrait' },
			imgFile: '/images/shop.jpg',
		},
		{
			eyebrow: 'Learning',
			badge:   '📚 Get Smarter',
			title:   'Learn, Review — Conquer Future Games!',
			desc:    'After every match, revisit the questions you missed with detailed explanations. Study your weak spots and come back to the next battle sharper than ever.',
			pills:   ['💡 Explanations', '📋 Review mode'],
			reverse: true,
			placeholder: { icon: '📚', label: 'Post-game review screen', size: '390 × 760 px · JPEG portrait' },
			imgFile: '/images/learn.jpg',
		},
		{
			eyebrow: 'Progression',
			badge:   '📈 Climb ranks',
			title:   'Prove Your Skills — Climb the Trophy!',
			desc:    'Watch your XP bar grow, monitor weekly activity charts, and rise through the global trophy leaderboard. Every correct answer brings you closer to the top.',
			pills:   ['📊 XP tracking', '🏅 Trophies', '📅 Weekly stats'],
			reverse: false,
			placeholder: { icon: '📈', label: 'Player profile / stats screen', size: '390 × 760 px · JPEG portrait' },
			imgFile: '/images/skills.jpg',
		},
		{
			eyebrow: 'Customization',
			badge:   '🎨 Unique look',
			title:   'Customize Your Character!',
			desc:    'Pick your fighter from a roster of adorable characters — Penguin, Teddy, Panda, Chick, Duck, and Mushroom — each with unique skins to unlock and equip.',
			pills:   ['🐧 Penguin', '🐻 Teddy', '🐼 Panda', '👗 Skins'],
			reverse: true,
			placeholder: { icon: '🎨', label: 'Character & skin selection screen', size: '390 × 760 px · JPEG portrait' },
			imgFile: '/images/customize.jpg',
		},
	];
</script>

<section class="features-section" id="features">
	<div class="container">

		<div class="section-head reveal" style="text-align:center;margin-bottom:72px;">
			<span class="eyebrow">Features</span>
			<h2 class="section-title">Everything you need to <span>dominate</span></h2>
			<p class="section-sub">Six reasons Quiz Masters is the ultimate trivia experience</p>
		</div>

		{#each features as feat, i}
			<div
				class="feat-row reveal"
				class:reverse={feat.reverse}
				style="transition-delay:{i * 0.05}s"
			>
				<div class="feat-img-col">
					<div class="feat-phone-frame">
						<div class="feat-phone-notch" aria-hidden="true"></div>
						<div class="feat-phone-screen">

							{#if feat.eyebrow === 'PVP Mode'}
							<img src="/images/shop.jpg" alt="In-game battle board screenshot showing a quiz question popup and player avatars" style="width:100%;height:100%;object-fit:cover;"/>
								<!--
									📸 IMAGE TO CREATE: PVP Battle Screen
									File: /images/pvp.jpg  |  Size: 390 × 760 px JPEG portrait
									Content:
									  - Top: game board — colorful tile grid (6×6 rounded squares),
									    blue tiles = player 1, red tiles = player 2, grey = neutral
									  - Two player avatars at opposite board corners
									  - A bold "VS" badge centred between the two player name tags
									  - Bottom: a white question card sliding up with 4 answer buttons
									    and a blue timer progress bar beneath it
									  - Score "3 – 2" displayed above the board
									  - Crossed-swords ⚔️ icon in the centre of the board
									Style: Vivid high-energy. Feels like a live eSports moment.
								-->
							{:else if feat.eyebrow === 'Knowledge'}
							<img  src="/images/questions.jpg" alt="In-game battle board screenshot showing a quiz question popup and player avatars" style="width:100%;height:100%;object-fit:cover;"/>
								<!--
									📸 IMAGE TO CREATE: Category Selection Screen
									File: /images/questions.jpg  |  Size: 390 × 760 px JPEG portrait
									Content:
									  - "Choose a Category" title at top with a search bar below
									  - 4 × 3 grid of colorful category cards, each card has:
									    · A unique bold emoji icon (🌍 Geography, ⚽ Sports,
									      🎬 Movies, 🔬 Science, 🎵 Music, 🏛️ History, 🍕 Food,
									      💻 Tech, 🎭 Culture, 🐾 Animals, 🚗 Vehicles, 🌿 Nature)
									    · Category name below the icon
									    · Unique pastel background color per card
									  - A yellow "🎲 Random" shuffle button at the very bottom
									Style: Colourful playful app UI, rounded card corners, light BG
								-->
							{:else if feat.eyebrow === 'Strategy'}
							<img  src="/images/learn.jpg" alt="In-game battle board screenshot showing a quiz question popup and player avatars" style="width:100%;height:100%;object-fit:cover;"/>

								<!--
									📸 IMAGE TO CREATE: In-Game Shop Screen
									File: /images/shop.jpg  |  Size: 390 × 760 px JPEG portrait
									Content:
									  - Semi-transparent dark overlay over a blurred game board
									  - "Shop" title with a 💰 180 coin counter top-right
									  - 3 power-up cards in a horizontal row:
									    · 🌸 Clue Flower — "Remove 2 wrong answers" — 30 coins
									    · ✨ Teleport    — "Jump to any tile"        — 50 coins
									    · 💊 Heal        — "Restore 20 HP"           — 40 coins
									  - Selected card (Teleport) has a glowing yellow border
									  - "BUY" button in yellow-gold under the selected card
									  - Each card has a small item illustration + description
									Style: RPG shop aesthetic — dark glass overlay, glowing cards
								-->
							{:else if feat.eyebrow === 'Learning'}
							<img  src="/images/skills.jpg" alt="In-game battle board screenshot showing a quiz question popup and player avatars" style="width:100%;height:100%;object-fit:cover;"/>

								<!--
									📸 IMAGE TO CREATE: Post-Game Review Screen
									File: /images/learn.jpg  |  Size: 390 × 760 px JPEG portrait
									Content:
									  - "Review Answers 📖" header, progress dots top: ○ ● ○ ○
									  - Question card: "What is the largest planet in our solar system?"
									  - 4 answer buttons stacked:
									    · Jupiter — highlighted GREEN with a ✓ checkmark (correct)
									    · Saturn  — highlighted RED with an ✗ (wrong choice made)
									    · Neptune — dimmed grey
									    · Mars    — dimmed grey
									  - Below: a blue info box "Fun fact: Jupiter is 11× Earth's
									    diameter and has 95 known moons."
									  - "Next Question →" yellow button at the bottom
									Style: Clean educational UI, bright green/red feedback colors
								-->
							{:else if feat.eyebrow === 'Progression'}
							<img  src="/images/customize.jpg" alt="In-game battle board screenshot showing a quiz question popup and player avatars" style="width:100%;height:100%;object-fit:cover;"/>

								<!--
									📸 IMAGE TO CREATE: Player Profile & Stats Screen
									File: /images/skills.jpg  |  Size: 390 × 760 px JPEG portrait
									Content:
									  - Penguin avatar (large, 80px) centred at top
									  - Username "QuizMaster99" + rank badge "Gold III 🥇"
									  - XP progress bar: "2 340 / 3 000 XP" with blue fill
									  - Weekly activity bar chart (Mon–Sun): bars in varying heights
									    with a blue-to-yellow gradient coloring
									  - Two stat pills side by side: "🏆 127 Trophies" + "#4 582 Global"
									  - Win/loss row: "W 38" in green badge · "L 12" in red badge
									Style: Profile/dashboard aesthetic, bold numbers, clean layout
								-->
							{:else if feat.eyebrow === 'Customization'}
							<img  src="/images/hero.jpg" alt="In-game battle board screenshot showing a quiz question popup and player avatars" style="width:100%;height:100%;object-fit:cover;"/>

								<!--
									📸 IMAGE TO CREATE: Character & Skin Selection Screen
									File: /images/customize.jpg  |  Size: 390 × 760 px JPEG portrait
									Content:
									  - Top: 3 × 2 grid of character portrait cards (all 6 characters)
									    — Penguin card has a yellow glow border (selected)
									  - Middle: large Penguin character preview in the "Classic" skin
									    displayed on a soft gradient stage/podium
									  - Bottom: horizontal skin selector row with 5 thumbnails:
									    Classic (equipped ✓), Ninja 🔒, Royal 🔒, Wizard 🔒, Space 🔒
									    (locked skins have a padlock overlay + coin cost shown)
									  - "✓ Equipped" green badge + "Unlock for 200 💰" button
									Style: Collectible dress-up game — shiny cards, gradient backgrounds
								-->
							{/if}

							<!-- Replace this div with <img src="{feat.imgFile}" …> once the image is ready -->
							<div class="img-placeholder" style="border-radius:0;border:none;">
								<div class="placeholder-inner">
									<span class="placeholder-icon">{feat.placeholder.icon}</span>
									<span class="placeholder-text">{feat.placeholder.label}</span>
									<span class="placeholder-size">{feat.placeholder.size}</span>
								</div>
							</div>

						</div>
						<span class="feat-badge">{feat.badge}</span>
					</div>
				</div>

				<div class="feat-text-col">
					<span class="eyebrow">{feat.eyebrow}</span>
					<h3 class="feat-title">{feat.title}</h3>
					<p class="feat-desc">{feat.desc}</p>
					<div class="pills">
						{#each feat.pills as pill, pi}
							<span class="pill" style="animation-delay:{pi * 0.08}s">{pill}</span>
						{/each}
					</div>
				</div>
			</div>
		{/each}
	</div>
</section>

<style>
	.features-section { padding: 96px 0; }

	.feat-row {
		display: grid;
		grid-template-columns: 260px 1fr;
		align-items: center;
		gap: 80px;
		margin-bottom: 100px;
	}
	.feat-row:last-child { margin-bottom: 0; }
	.feat-row.reverse    { grid-template-columns: 1fr 260px; }
	.feat-row.reverse .feat-img-col  { order: 2; }
	.feat-row.reverse .feat-text-col { order: 1; }

	.feat-img-col { display: flex; justify-content: center; }

	.feat-phone-frame {
		position: relative;
		width: 240px;
		height: 500px;
		background: #0d1117;
		border-radius: 42px;
		padding: 10px;
		box-shadow:
			0 0 0 1.5px rgba(255,255,255,0.08),
			0 30px 70px rgba(56,165,255,0.20),
			0 10px 30px rgba(0,0,0,0.28);
		transition: transform 0.32s cubic-bezier(0.34,1.56,0.64,1),
		            box-shadow 0.32s ease;
	}
	.feat-phone-frame:hover {
		transform: translateY(-10px) rotate(-1.5deg);
		box-shadow:
			0 0 0 1.5px rgba(255,255,255,0.12),
			0 50px 90px rgba(56,165,255,0.30),
			0 20px 40px rgba(0,0,0,0.3);
	}
	.feat-phone-notch {
		position: absolute;
		top: 0; left: 50%;
		transform: translateX(-50%);
		width: 80px; height: 22px;
		background: #0d1117;
		border-radius: 0 0 16px 16px;
		z-index: 10;
	}
	.feat-phone-screen {
		width: 100%;
		height: 100%;
		border-radius: 34px;
		overflow: hidden;
		background: var(--blue-pale);
	}

	.feat-badge {
		position: absolute;
		bottom: -14px; right: -14px;
		background: var(--yellow);
		color: var(--dark);
		font-family: 'Fredoka One', cursive;
		font-size: 0.85rem;
		padding: 8px 18px;
		border-radius: 50px;
		box-shadow: 0 4px 14px rgba(0,0,0,0.13);
		white-space: nowrap;
		animation: badge-float 3.5s ease-in-out infinite;
	}

	.feat-title {
		font-family: 'Fredoka One', cursive;
		font-size: clamp(1.5rem, 2.5vw, 2.05rem);
		color: var(--dark);
		line-height: 1.18;
		margin-bottom: 14px;
	}
	.feat-desc {
		color: var(--muted);
		font-size: 1rem;
		font-weight: 600;
		line-height: 1.78;
	}

	@media (max-width: 820px) {
		.feat-row,
		.feat-row.reverse {
			grid-template-columns: 1fr;
			gap: 40px;
		}
		.feat-row.reverse .feat-img-col,
		.feat-row.reverse .feat-text-col { order: unset; }
	}

	@media (prefers-reduced-motion: reduce) {
		.feat-phone-frame:hover { transform: none; }
	}
</style>
