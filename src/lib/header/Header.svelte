<script>
	import { page } from '$app/stores';
	import logo from './svelte-logo.svg';
</script>

<header>
	<nav class="navbar is-white" aria-label="main navigation">
		<div class="navbar-brand">
			<a class="navbar-item" href="/">
				<img src="/images/meetup-logo.svg" alt="meetup-logo" />
			</a>
		</div>

		<div id="navbarBasicExample" class="navbar-menu">
			<div class="navbar-end">
				<div class="navbar-item">
					<!-- <div class="buttons"> -->
					<a class="is-ghost" href="/signup">
						<strong>Sign up</strong>
					</a>
					<a class="is-ghost" href="/login"> Log in </a>
					<!-- </div> -->
				</div>
			</div>
		</div>
	</nav>
</header>

<style>
	a + a {
		margin-left: 1em;
	}
</style>
