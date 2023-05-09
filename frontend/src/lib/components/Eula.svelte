<script>
  import { onMount } from "svelte";
  import { Modal, Button } from "stwui";

  let eula = "";

  onMount(() => {
    fetch("eula.txt")
      .then((res) => res.text())
      .then((text) => {
        return (eula = text);
      });
  });
</script>

<Modal.Content slot="content">
  <Modal.Content.Header slot="header"
    ><h3>END USER LICENSE AGREEMENT</h3></Modal.Content.Header
  >
  <Modal.Content.Body slot="body">
    <p>{eula}</p>
  </Modal.Content.Body>
  <div class="flex left-0 right-0 m-auto space-x-16 my-4">
    <Button type="primary" class="w-24">Accept</Button>
    <Button type="danger" class="w-24">Decline</Button>
  </div>
</Modal.Content>
