<script lang="ts">
  import { Statistic } from "stwui";
  import { formatNumber } from "stwui/utils";

  export let title: string;

  const chart_box = "svg-path";
</script>

<Statistic class="bg-gradient-to-r from-cyan-500 to-blue-500">
  <Statistic.Icon class="text-white" slot="icon" data={chart_box} />
  <Statistic.Title class="text-white" slot="title">{title}</Statistic.Title>
  <Statistic.Value class="text-white" slot="value">
    {formatNumber(2660000, {
      style: "currency",
      notation: "compact",
      maximumFractionDigits: 1,
      minimumFractionDigits: 1,
    })}
  </Statistic.Value>
  <Statistic.Comparison slot="comparison">
    <Statistic.Comparison.Value class="text-white" slot="value">
      Last Year: {formatNumber(2580000, {
        style: "currency",
        notation: "compact",
        maximumFractionDigits: 1,
        minimumFractionDigits: 1,
      })}
    </Statistic.Comparison.Value>
    <Statistic.Comparison.Trend
      class="bg-white text-black"
      showIcon={false}
      slot="trend"
    >
      {formatNumber(80000, {
        style: "currency",
        notation: "compact",
        maximumFractionDigits: 1,
        minimumFractionDigits: 1,
      })} ({formatNumber(0.031, {
        style: "percent",
      })})
    </Statistic.Comparison.Trend>
  </Statistic.Comparison>
</Statistic>
