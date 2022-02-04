<script context="module">
	export const prerender = true;
</script>



<svelte:head>
	<title>Home</title>
</svelte:head>

<section>
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

	
</style>
