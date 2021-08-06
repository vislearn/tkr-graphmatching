131c
		const auto now = clock::now();
		const std::chrono::duration<double> seconds = now - start;
		if (options.verbose) printf("%d\t%f\t%f\t%f\tstep=%f", k, seconds.count(), theta, upper_bound, lambda);
.
118a

	using clock = std::chrono::steady_clock;
	const auto start = clock::now();

.
0a
#include <chrono>
.
wq
