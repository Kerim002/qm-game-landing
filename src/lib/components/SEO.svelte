<!-- src/lib/components/SEO.svelte -->
<script lang="ts">
	let { 
		title = 'Quiz Masters', 
		description = 'Quiz Masters: Trivia Tactics',
		url = 'https://quizmasters.beaconarc.xyz'
	} = $props();
</script>

<svelte:head>
	<!-- Standard SEO -->
	<title>{title}</title>
	<meta name="description" content={description} />
	<link rel="canonical" href={url} />

	<!-- Open Graph / Chat Apps (Telegram, imo, WhatsApp, Discord) -->
	<meta property="og:type" content="website" />
	<meta property="og:url" content={url} />
	<meta property="og:title" content={title} />
	<meta property="og:description" content={description} />
	
	<!-- Absolute path to the preview image -->
	<meta property="og:image" content="{url}/images/pvp.jpg" />
	<meta property="og:image:secure_url" content="{url}/images/pvp.jpg" />
	<meta property="og:image:type" content="image/png" />
	
	<!-- CRITICAL FOR CHAT APPS: Tells bots the exact dimensions to render instantly -->
	<meta property="og:image:width" content="1200" />
	<meta property="og:image:height" content="630" />

	<!-- Twitter / X -->
	<meta property="twitter:card" content="summary_large_image" />
	<meta property="twitter:url" content={url} />
	<meta property="twitter:title" content={title} />
	<meta property="twitter:description" content={description} />
	<meta property="twitter:image" content="{url}/images/pvp.jpg" />
</svelte:head>