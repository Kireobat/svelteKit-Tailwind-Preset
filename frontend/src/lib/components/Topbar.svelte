<script lang="ts">
  import { Tabs } from "stwui";
  import Fa from "svelte-fa/src/fa.svelte";
  import {
    faHouse,
    faUser,
    faUsers,
    faFile,
  } from "@fortawesome/free-solid-svg-icons/index.js";

  const home = "svg-path";
  const teams = "svg-path";
  const info = "svg-path";
  const user = "svg-path";

  interface Tab {
    href: string;
    title: string;
    data: string;
    icon: any;
  }

  const tabs: Tab[] = [
    {
      href: "#home",
      title: "Home",
      data: home,
      icon: faHouse,
    },
    {
      href: "#teams",
      title: "Teams",
      data: teams,
      icon: faUsers,
    },
    {
      href: "#work",
      title: "Your Work",
      data: info,
      icon: faFile,
    },
    {
      href: "#profile",
      title: "Your Profile",
      data: user,
      icon: faUser,
    },
  ];

  let currentTab = "#home";
</script>

<Tabs {currentTab} variant="bar">
  {#each tabs as tab, i}
    <Tabs.Tab
      key={tab.href}
      href={tab.href}
      on:click={() => (currentTab = tab.href)}
      class="flex items-center space-x-2"
    >
      <Fa icon={tab.icon} size="lg" />
      <h3>{tab.title}</h3>
    </Tabs.Tab>
  {/each}
</Tabs>
