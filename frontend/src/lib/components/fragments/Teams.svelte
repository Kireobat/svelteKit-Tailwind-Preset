<script>
  import { onMount } from "svelte";
  import TeamMembers from "./Teams/TeamMembers.svelte";
  import TeamTimeline from "./Teams/TeamTimeline.svelte";

  onMount(() => {
    console.log("Teams component mounted");

    //Fetch data from backend
  });
</script>

<div class="grid grid-cols-2">
  <div class="w-96">
    <h2>Team Members</h2>
    <TeamMembers />
  </div>
  <div class="w-96">
    <h2>Team Timeline</h2>
    <TeamTimeline />
  </div>
</div>
