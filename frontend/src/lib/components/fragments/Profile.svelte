<script lang="ts">
  import { Alert, Button, Portal, Modal } from "stwui";
  import Fa from "svelte-fa/src/fa.svelte";
  import { faKey } from "@fortawesome/free-solid-svg-icons/index.js";
  import Eula from "../Eula.svelte";
  import { onMount } from "svelte";

  let eula = "";

  // EULA open/close
  let open = false;

  function openModal() {
    open = true;
  }

  function closeModal() {
    open = false;
  }

  onMount(() => {
    fetch("eula.txt")
      .then((res) => res.text())
      .then((text) => {
        return (eula = text);
      });
  });
</script>

<Alert type="warn" class="w-full">
  <Alert.Title slot="title">WARNING</Alert.Title>
  <Alert.Description slot="description"
    >Your password has been discovered in a databreach</Alert.Description
  >
  <Alert.Extra slot="extra">
    <Button type="primary">
      Change Password
      <Fa icon={faKey} class="ml-2" />
    </Button>
  </Alert.Extra>
</Alert>

<h3>EULA</h3>

<Button type="primary" on:click={openModal}>Read EULA</Button>

<Portal>
  {#if open}
    <Modal handleClose={closeModal}>
      <Eula />
    </Modal>
  {/if}
</Portal>
