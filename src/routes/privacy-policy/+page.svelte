<script lang="ts">
	import Navbar from "../../lib/components/navbar.svelte";
	import Footer from "../../lib/components/footer.svelte";
</script>

<svelte:head>
	<title>Privacy Policy — Quiz Masters</title>
</svelte:head>
<Navbar/>
<section class="policy-page">
	<div class="container">
		<p class="eyebrow">Privacy Policy</p>
		<h1 class="section-title">How we protect your game data</h1>
		<p class="section-sub">
			Quiz Masters is built to keep your account and gameplay information
			safe. This page explains what we collect, how we use it, and how you
			can request deletion.
		</p>
		<a href="/" class="btn btn-white policy-back">Back to Home</a>

		<div class="policy-card">
			<h2>1. Information we collect</h2>
			<p>
				We collect the information needed to create and maintain your
				game experience.
			</p>
			<ul>
				<li>
					Username and optional password when you secure your account.
				</li>
				<li>
					Automatically generated Player ID, device model, OS version,
					and gameplay progress.
				</li>
				<li>
					Gameplay analytics such as trophies, ELO, match history, and
					basic game actions.
				</li>
			</ul>
		</div>

		<div class="policy-card">
			<h2>2. How we use your information</h2>
			<p>
				Your data is used only to support the game and your experience.
			</p>
			<ul>
				<li>Create and manage your Quiz Masters account.</li>
				<li>
					Save gameplay progress, match results, and personalized
					settings.
				</li>
				<li>Enable multiplayer matches and keep game balance fair.</li>
				<li>Provide support when you contact us.</li>
			</ul>
		</div>

		<div class="policy-card">
			<h2>3. Sharing of information</h2>
			<p>
				We do not sell, rent, or share your data with third parties for
				advertising.
			</p>
			<p>
				Information is stored and used only for gameplay functionality
				and support inside the game.
			</p>
		</div>

		<div class="policy-card">
			<h2>4. Data retention</h2>
			<p>We keep your account data while your account is active.</p>
			<p>
				When you request deletion, your account and all related data
				will be permanently removed. Temporary security logs may be
				retained briefly, but these do not contain personal information.
			</p>
		</div>

		<div class="policy-card">
			<h2>5. Data deletion requests</h2>
			<p>
				You can request deletion of your account and all game data at
				any time. Deletion is processed according to the Quiz Masters
				data policies and removes your account permanently.
			</p>
		</div>

		<div class="policy-card">
			<h2>6. Children’s privacy</h2>
			<p>
				Quiz Masters is not intended for children under 13 years old. We
				do not knowingly collect data from children younger than 13.
			</p>
			<p>
				If you believe a child has used the game, contact us and we will
				help delete the associated data.
			</p>
		</div>

		<div class="policy-card">
			<h2>7. Updates to this policy</h2>
			<p>
				We may update this policy as the game changes. The newest
				version will always be available on this page.
			</p>
		</div>

		<div class="policy-card policy-contact">
			<h2>Contact</h2>
			<p>
				If you have any questions about this policy, email us at <a
					href="mailto:ahmed.hojakuliyev@gmail.com"
					>ahmed.hojakuliyev@gmail.com</a
				>.
			</p>
			<p class="policy-note">Last updated: November 20th, 2025</p>
		</div>
	</div>
</section>
<Footer/>
<style>
	.policy-page {
		padding: 80px 0 120px;
	}

	.policy-card {
		background: #fff;
		border: 1px solid rgba(56, 165, 255, 0.16);
		border-radius: var(--radius-lg);
		box-shadow: var(--shadow-card);
		padding: 32px;
		margin-top: 26px;
	}

	.policy-card h2 {
		font-size: 1.25rem;
		margin-bottom: 14px;
		color: var(--dark);
	}

	.policy-card p,
	.policy-card li {
		color: var(--muted);
		line-height: 1.8;
	}

	.policy-card ul {
		margin: 0.75rem 0 0 1.5rem;
	}

	.policy-contact a {
		color: var(--blue);
		text-decoration: none;
		font-weight: 700;
	}

	.policy-contact a:hover {
		color: var(--blue-dark);
	}

	.policy-back {
		display: inline-flex;
		margin-top: 24px;
	}

	.policy-note {
		margin-top: 16px;
		font-size: 0.9rem;
		color: rgba(90, 122, 154, 0.9);
	}

	@media (max-width: 768px) {
		.policy-card {
			padding: 24px;
		}
	}
</style>
