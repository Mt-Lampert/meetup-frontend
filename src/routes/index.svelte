<script>
	import dummyMeetups from '$lib/dummy-meetups';
	import GalleryCard from '$lib/GalleryCard.svelte';

	let maxMeetups = 6; // init value
	let myMeetups = [];

	$: myMeetups = dummyMeetups.slice(0, maxMeetups);

	function addRow() {
		if (maxMeetups <= 24) {
			maxMeetups += 3;
		}
	}
</script>

<!-- svelte-ignore module-script-reactive-declaration -->
<svelte:head>
	<title>Home</title>
</svelte:head>

<section class="hero is-medium has-text-center">
	<div class="hero-body">
		<p class="title is-1 has-text-info-dark">Willkommen!</p>
		<p class="subtitle">Viel Spaß mit unserem kleinen Meetup-Projekt</p>
	</div>
</section>

<section>
	<h1 class="title has-text-info-dark">Unsere Meetups</h1>
	<h2 class="subtitle">Eine kleine Auswahl</h2>

	<div class="container is-max-desktop">
		<div class="columns is-multiline">
			{#each myMeetups as meetup (meetup.id)}
				<GalleryCard {meetup} />
			{/each}
		</div>
	</div>

	{#if maxMeetups <= 9}
		<div class="container btn-container">
			<button class="button is-info" on:click={addRow}>More</button>
		</div>
	{/if}
</section>

<style>
	.btn-container {
		padding-top: 2rem;
		padding-bottom: 2rem;
	}
	section {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		flex: 1;
	}

	h1 {
		width: 100%;
	}

	.hero-body {
		text-align: center;
	}
</style>
