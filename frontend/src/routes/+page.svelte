<script>
  import Example from "$lib/components/Example.svelte";
  import { Button, Portal, Modal} from 'stwui';
  import "../app.postcss";
  import { onMount } from "svelte";

  let eula = "";

  onMount(() => {
    fetch("eula.txt")
    .then((res) => res.text())
    .then((text) =>{  
      return eula = text
    })
  });
  

  let open = false;

	function openModal() {
		open = true;
	}

	function closeModal() {
		open = false;
	}
</script>

<main>
  <h1>This is a preset</h1>
  
  <Button type="primary">Button</Button>

  <Button type="primary" on:click={openModal}>Open Modal</Button>

  <Portal>
    {#if open}
    <Modal handleClose={closeModal}>
      <Modal.Content slot="content">
        <Modal.Content.Header slot="header"><h3>END USER LICENSE AGREEMENT</h3></Modal.Content.Header>
        <Modal.Content.Body slot="body">
          <p>{eula}</p>
        </Modal.Content.Body>
        <div class="flex ml-12 mb-4 space-x-6">
        <Button type="primary">Accept</Button>
        <Button type="danger">Cancel</Button>
        </div>
      </Modal.Content>
      
    </Modal>
    {/if}
  </Portal>
</main>

<style lang="postcss">
</style>
