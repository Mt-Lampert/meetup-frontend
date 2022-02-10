<script>
  import { fade } from "svelte/transition"
	export let meetup = {};
</script>

<div class="column is-one-third" transition:fade>
	<div class="card">
		<div class="card-image">
			<figure class="image is-4by3">
				<!-- svelte-ignore a11y-img-redundant-alt -->
				<img src="/images/{meetup.img}" alt="Placeholder image" />
			</figure>
		</div>
		<div class="card-content">
			<h1 class="title is-5">{meetup.title}</h1>
			<h2 class="subtitle is-6">{meetup.city}, {meetup.date}</h2>
		</div>
	</div>
</div>

<style>
	h2 {
		text-align: center;
	}
</style>
