<script>
  import { example } from "$lib/stores.js";

  let word = "";
  example.subscribe((value) => {
    word = value;
  });
</script>

<h1>This is an {word}</h1>
