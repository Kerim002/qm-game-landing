<script lang="ts">
	import Navbar from "../../lib/components/navbar.svelte";
	import Footer from "../../lib/components/footer.svelte";
</script>

<svelte:head>
	<title>Data Deletion — Quiz Masters</title>
</svelte:head>

<Navbar />
<section class="policy-page">
	<div class="container">
		<p class="eyebrow">Data Deletion</p>
		<h1 class="section-title">Request account and data removal</h1>
		<p class="section-sub">
			If you want your Quiz Masters account and all associated data
			removed, follow the instructions below.
		</p>
		<a href="/" class="btn btn-white policy-back">Back to Home</a>

		<div class="policy-card">
			<h2>How to request deletion</h2>
			<ol>
				<li>
					Send an email to <a
						href="mailto:ahmed.hojakuliyev@gmail.com"
						>ahmed.hojakuliyev@gmail.com</a
					>.
				</li>
				<li>Include your Account ID (visible inside the game).</li>
				<li>
					Confirm that you want your account and all related data
					permanently deleted.
				</li>
			</ol>
		</div>

		<div class="policy-card">
			<h2>What data will be deleted</h2>
			<ul>
				<li>Account ID</li>
				<li>Game progress (zones, trophies, ELO, items)</li>
				<li>Match history</li>
				<li>In-game currency and purchases</li>
				<li>Saved preferences and settings</li>
			</ul>
		</div>

		<div class="policy-card">
			<h2>What data is retained and why</h2>
			<ul>
				<li>
					Transaction records (required by law) — retained for up to 5
					years.
				</li>
				<li>
					Server logs for security and anti-fraud — retained for up to
					30 days.
				</li>
			</ul>
		</div>

		<div class="policy-card">
			<h2>What cannot be recovered</h2>
			<p>
				Once deletion is completed, your account and game progress
				cannot be restored.
			</p>
		</div>

		<div class="policy-card">
			<h2>Processing time</h2>
			<p>Deletion requests are processed within 7–14 days.</p>
		</div>

		<div class="policy-card policy-contact">
			<h2>Contact</h2>
			<p>
				If you have any questions, email <a
					href="mailto:ahmed.hojakuliyev@gmail.com"
					>ahmed.hojakuliyev@gmail.com</a
				>.
			</p>
			<p class="policy-note">Last updated: November 22nd, 2025</p>
		</div>
	</div>
</section>

<Footer />

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

	.policy-card ul,
	.policy-card ol {
		margin: 0.75rem 0 0 1.5rem;
	}

	.policy-card ol {
		list-style: decimal;
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
