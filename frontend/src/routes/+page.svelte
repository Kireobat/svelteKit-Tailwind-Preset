<script>
  import { Button, Portal, Modal } from "stwui";
  import "../app.postcss";
  import { onDestroy, onMount } from "svelte";
  import Topbar from "$lib/components/Topbar.svelte";
  import Eula from "$lib/components/Eula.svelte";
  import Home from "$lib/components/fragments/Home.svelte";
  import Teams from "$lib/components/fragments/Teams.svelte";
  import Work from "$lib/components/fragments/Work.svelte";
  import Profile from "$lib/components/fragments/Profile.svelte";

  // variables
  let fragment = "#home";

  // fragments
  // example: http://localhost:5000/#home
  // #home is the fragment
  const updateFragment = () => {
    fragment = window.location.hash;
  };

  onMount(() => {
    if (typeof window !== "undefined") {
      updateFragment();
      window.addEventListener("hashchange", updateFragment);
    } else {
      console.log("window is undefined");
    }
  });

  onDestroy(() => {
    if (typeof window !== "undefined") {
      window.removeEventListener("hashchange", updateFragment);
    } else {
      console.log("window is undefined");
    }
  });
</script>

<main class="mt-4 mx-2">
  <Topbar />
  <div class="mt-4">
    {#if fragment === "#home"}
      <Home />
    {:else if fragment === "#teams"}
      <Teams />
    {:else if fragment === "#work"}
      <Work />
    {:else if fragment === "#profile"}
      <Profile />
    {/if}
  </div>

  <p>The current fragment identifier is: {fragment}</p>
</main>
