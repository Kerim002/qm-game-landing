<script lang="ts">

	// let { videoId = 'dQw4w9WgXcQ', title = 'YouTube video player' } = $props<{
	// 	videoId: string;
	// 	title?: string;
	// }>();
    const  videoId = "vCdWl6NXzY4"
    const title = "Quiz Masters: Trivia Tactics Educational PvP Quiz Board Game | Trailer"
</script>

<!-- Responsive Container: Forces a strict 16:9 aspect ratio -->
<div class="video-container container">
	<iframe
		src="https://www.youtube.com/embed/{videoId}"
		{title}
		frameborder="0"
		allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
		referrerpolicy="strict-origin-when-cross-origin"
		allowfullscreen
	>
	</iframe>
</div>

<style>
	.video-container {
		position: relative;
		width: 100%;
		aspect-ratio: 16 / 9; 
		border-radius: 0.5rem;
		overflow: hidden;
		box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1);
        margin-top: 2rem;
	}

	.video-container iframe {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
	}
</style>