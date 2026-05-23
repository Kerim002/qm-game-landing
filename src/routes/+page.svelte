<script>
	import { onMount } from "svelte";
	import Navbar from "../lib/components/navbar.svelte";
	import Footer from "../lib/components/footer.svelte";
	import BottomSection from "../lib/components/bottom-section.svelte";
	import FaqSection from "../lib/components/faq-section.svelte";
	import HowSection from "../lib/components/how-section.svelte";
	import CharsSection from "../lib/components/chars-section.svelte";
	import FeaturesSection from "../lib/components/features-section.svelte";
	import TopSection from "../lib/components/top-section.svelte";
	import StatsBar from "../lib/components/stats-bar.svelte";
    import VideoSection from "$lib/components/video-section.svelte";

	// ── Svelte 5 runes ─────────────────────────

	// Scroll reveal
	onMount(() => {
		const els = document.querySelectorAll(".reveal");
		const obs = new IntersectionObserver(
			(entries) =>
				entries.forEach((e) => {
					if (e.isIntersecting) e.target.classList.add("visible");
				}),
			{ threshold: 0.1 },
		);
		els.forEach((el) => obs.observe(el));
		return () => obs.disconnect();
	});
</script>


<Navbar />

<TopSection />

<StatsBar />

<VideoSection />
<FeaturesSection />

<CharsSection />

<HowSection />

<FaqSection />

<BottomSection />
<Footer />
