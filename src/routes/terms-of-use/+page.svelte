<script lang="ts">

import Navbar from "../../lib/components/navbar.svelte";
import Footer from "../../lib/components/footer.svelte";
</script>

<svelte:head>
	<title>Terms of Use — Quiz Masters</title>

</svelte:head>
<Navbar/>
<section class="policy-page">
	<div class="container">
		<p class="eyebrow">Terms of Use</p>
		<h1 class="section-title">Your agreement to play fair</h1>
		<p class="section-sub">
			These Terms of Use explain how to use Quiz Masters responsibly, what we expect from players, and how we handle accounts and game data.
		</p>
		<a href="/" class="btn btn-white policy-back">Back to Home</a>

		<div class="policy-card">
			<h2>1. Eligibility</h2>
			<p>To play Quiz Masters, you must be at least 10 years old. By using the game, you confirm that you meet this requirement.</p>
		</div>

		<div class="policy-card">
			<h2>2. Accounts</h2>
			<p>Quiz Masters creates a guest account automatically when you launch the game. You may choose to add a password to secure your account and access it from other devices.</p>
			<ul>
				<li>You are responsible for keeping your login information secure.</li>
				<li>You are responsible for all activity under your account.</li>
				<li>We may suspend or delete accounts that violate these Terms.</li>
			</ul>
		</div>

		<div class="policy-card">
			<h2>3. Gameplay & fair use</h2>
			<p>Quiz Masters must be played fairly.</p>
			<ul>
				<li>Do not cheat, exploit bugs, or use unauthorized third-party tools.</li>
				<li>Do not modify or reverse-engineer the game.</li>
				<li>Do not impersonate other users.</li>
				<li>Do not interfere with other players or server operations.</li>
			</ul>
			<p>We may restrict access, reset progress, or terminate accounts that engage in unfair or abusive behavior.</p>
		</div>

		<div class="policy-card">
			<h2>4. Virtual items</h2>
			<p>Quiz Masters may include points, ELO ratings, subjects, and other non-monetary features.</p>
			<ul>
				<li>These items have no real-world value.</li>
				<li>They cannot be sold or traded outside the game.</li>
				<li>We may change or adjust virtual items and progression at any time.</li>
			</ul>
		</div>

		<div class="policy-card">
			<h2>5. User conduct</h2>
			<p>You agree to use the game lawfully and respectfully.</p>
			<ul>
				<li>Do not post inappropriate, offensive, or harmful content.</li>
				<li>Do not attempt unauthorized access to servers or accounts.</li>
				<li>Do not disrupt gameplay for others.</li>
			</ul>
			<p>We may remove content or restrict accounts if needed to protect the community.</p>
		</div>

		<div class="policy-card">
			<h2>6. Data & privacy</h2>
			<p>Your use of Quiz Masters is governed by our Privacy Policy, which explains how we collect and use your data.</p>
			<ul>
				<li>We collect your username and optional password if you choose account security.</li>
				<li>We collect gameplay analytics such as stats, ELO, and match history.</li>
			</ul>
			<p>For full details, see the Privacy Policy page.</p>
		</div>

		<div class="policy-card">
			<h2>7. Updates & changes</h2>
			<p>We may modify the game, add or remove features, or update these Terms at any time. Continued use after changes means you accept the updated Terms.</p>
		</div>

		<div class="policy-card">
			<h2>8. Disclaimer</h2>
			<p>The game is provided “as is” without warranties of any kind. We do not guarantee uninterrupted service, bug-free gameplay, or preservation of game data in all circumstances.</p>
			<p>You use the game at your own risk.</p>
		</div>

		<div class="policy-card">
			<h2>9. Limitation of liability</h2>
			<p>To the extent permitted by law, we are not liable for data loss, account loss, gameplay interruptions, or damages arising from your use of the game.</p>
		</div>

		<div class="policy-card">
			<h2>10. Account deletion & support</h2>
			<p>You can request deletion of your account and all data at any time. We will delete your account data according to our Privacy Policy.</p>
		</div>

		<div class="policy-card policy-contact">
			<h2>11. Contact</h2>
			<p>For support or questions, email <a href="mailto:ahmed.hojakuliyev@gmail.com">ahmed.hojakuliyev@gmail.com</a>.</p>
			<p class="policy-note">Last updated: November 22nd, 2025</p>
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
