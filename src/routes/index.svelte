<script context="module">
	import UnderConstruction from "$lib/UnderConstruction.svelte"
	export const prerender = true;
</script>

<svelte:head>
	<title>Home</title>
</svelte:head>

<section>
	<UnderConstruction />

	<h1 class="has-text-info-dark">Hello, Folks</h1>

	<p class="has-text-grey">This is SvelteKit with <span class="has-text-primary">Bulma</span></p>

	<p>And it works!!!!</p>
</section>

<style>
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
	
	.under-construction {
		margin-bottom: 2rem;
	}
</style>
