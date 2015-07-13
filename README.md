On my MBP
- 2.3 GHz Intel Core i7
- 16 GB 1600 MHz DDR3

### Original Comparative Benchmark Numbers

| Framework      | Throughput (req/s) | Latency (ms) | Consistency (σ ms) |
| :------------- | -----------------: | -----------: | -----------------: |
| Phoenix        |             30634  |        3.31  |              1.71  |
| Rails          |              3000  |       15.00  |              7.00  |
| Play           |             71200  |        1.59  |              3.25  |

### Postgres Comparative Benchmark Numbers

| Framework      | Throughput (req/s) | Latency (ms) | Consistency (σ ms) |
| :------------- | -----------------: | -----------: | -----------------: |
| Phoenix13      |              6000  |       16.40  |              1.44  |
| Phoenix13(Ecto)|              5876  |       17.03  |              1.71  |
| Rails          |              1288  |       45.00  |             17.00  |
| Play           |              7411  |       14.42  |             10.54  |

* Play was using 570% CPU, Phoenix was at 450%

### Ecto Pool Size Comparative Benchmark Numbers for Phoenix13(Ecto)

| Pool Size      | Throughput (req/s) | Latency (ms) | Consistency (σ ms) |
| :------------- | -----------------: | -----------: | -----------------: |
|              1 |              1584  |       62.99  |              6.22  |
|              5 |              5545  |       18.02  |              1.05  |
|             10 |              5843  |       17.10  |              1.07  |
|             20 |              5886  |       16.97  |              1.48  |
|             30 |              5908  |       16.91  |              2.10  |
|             50 |              5925  |       16.86  |              3.51  |

Ecto master at https://github.com/elixir-lang/ecto/commit/c2e26c7f7e22fd6a3a22ba8d2018746527f8b1c3
