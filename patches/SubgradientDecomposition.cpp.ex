170c
		if (options.verbose) {
			printf("\n");
			fflush(stdout);
		}
.
131c
		const auto now = clock::now();
		const std::chrono::duration<double> seconds = now - clock_start;
		if (options.verbose) printf("%d\t%f\t%f\t%f\tstep=%f", k, seconds.count(), theta, upper_bound, lambda);
.
118a

	using clock = std::chrono::steady_clock;
	clock_start = clock::now();

.
4a
extern std::chrono::time_point<std::chrono::steady_clock> clock_start;

.
0a
#include <chrono>
.
wq
