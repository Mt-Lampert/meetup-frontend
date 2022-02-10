<script>
  export let meetup = {}
</script>

<div class="card column is-one-third">
  <div class="card-image">
    <figure class="image is-4by3">
      <!-- svelte-ignore a11y-img-redundant-alt -->
      <img src="/images/{meetup.img}" alt="Placeholder image">
    </figure>
  </div>
  <div class="card-content">
    <h1 class="title is-4">{meetup.title}</h1>
    <h2 class="subtitle">{meetup.city}, {meetup.date}</h2>
  </div>
</div>

<style>
  h2 {
    text-align: center;
  }
</style>