<script>
  export let meetup = {}
</script>

<div class="card w-480">
  <div class="card-image">
    <figure class="image is-4by3">
      <!-- svelte-ignore a11y-img-redundant-alt -->
      <img src="/images/{meetup.img}" alt="Placeholder image">
    </figure>
  </div>
  <div class="card-content">
    <h1 class="title is-3">{meetup.title}</h1>
    <h2 class="subtitle">{meetup.city}, {meetup.date}</h2>
  </div>
</div>

<style>
  .w-480 {
    width: 400px;
  }

  h2 {
    text-align: center;
  }
</style>