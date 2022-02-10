<script context="module">
	import dummyMeetups from '$lib/dummy-meetups';
	export const prerender = true;

	// const myMeetups = dummyMeetups.slice(4,7)
</script>

<svelte:head>
	<title>Home</title>
</svelte:head>

<section class="hero is-medium has-text-center">
  <div class="hero-body">
    <p class="title is-1 has-text-info-dark">
      Willkommen!
    </p>
    <p class="subtitle">
      Viel Spaß mit unserem kleinen Meetup-Projekt
    </p>
  </div>
</section>


<section>
	<h1 class="title has-text-info-dark">Unsere Meetups</h1>
	<h2 class="subtitle">Eine kleine Auswahl</h2>


	<div class="container is-max-desktop">

		<div class="columns is-multiline">
			{#each dummyMeetups as meetup (meetup.id)}
				<div class="column is-one-third">
					<div class="card">
						<div class="card-image">
							<figure class="image is-16by9">
								<!-- svelte-ignore a11y-img-redundant-alt -->
								<img src="/images/{meetup.img}" alt="Placeholder image" />
							</figure>
						</div>
						<div class="card-content">
							<div class="media">
								<div class="media-content">
									<p class="title is-5">{meetup.title}</p>
									<p class="subtitle is-6">{meetup.city}, {meetup.date}</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			{/each}
		</div>
	</div>
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

	.hero-body {
		text-align: center;
	}
</style>
