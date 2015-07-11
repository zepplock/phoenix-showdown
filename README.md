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
| Phoenix        |               730  |      135.00  |             42.00  |
| Rails          |              1288  |       45.00  |             17.00  |
| Play           |                 -  |           -  |                 -  |

