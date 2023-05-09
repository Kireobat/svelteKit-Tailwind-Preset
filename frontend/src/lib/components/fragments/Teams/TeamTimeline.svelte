<script lang="ts">
  import { Timeline } from "stwui";
  import type { TimelineItem } from "stwui/types";

  const account = "svg-path";
  const currency_usd = "svg-path";

  const timeline: TimelineItem[] = [
    {
      created: new Date(2022, 8, 1),
      avatar: "image.png",
      creator: "Eduardo Benz",
      type: "comment",
      description: "Lorem ipsum...",
    },
    {
      icon: account,
      created: new Date(2022, 8, 5),
      avatar: "image.png",
      creator: "Hilary Mahy",
      description: "Lorem ipsum...",
    },
    {
      icon: currency_usd,
      created: new Date(2022, 8, 6),
      avatar: "image.png",
      creator: "Hilary Mahy",
      description: "Lorem ipsum...",
    },
    {
      created: new Date(2022, 8, 7),
      avatar: "image.png",
      creator: "Jason Meyers",
      type: "comment",
      description: "Lorem ipsum...",
    },
  ];
</script>

<div class="border-2 rounded-lg">
  <div class="my-4 ml-4">
    <Timeline>
      {#each timeline as item}
        <Timeline.Item
          created={item.created}
          avatar={item.avatar}
          creator={item.creator}
          type={item.type}
          icon={item.icon}
          description={item.description}
        />
      {/each}
    </Timeline>
  </div>
</div>
