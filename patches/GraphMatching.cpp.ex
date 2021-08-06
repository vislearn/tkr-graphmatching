1240a
	}

	if (output_file) {
		auto elapsed = std::chrono::duration_cast<std::chrono::duration<double>>(std::chrono::steady_clock::now() - clock_start);

		bool first = true;
		output_file << "{\"labeling\": [";
		for (i = nodes[0]; i < nodes[0]+N0; i++) {
			if (!first)
				output_file << ", ";

			if (i->match)
				output_file << (int)(i->match->i[1] - nodes[1]);
			else
				output_file << (int)(-1);

			first = false;
		}
		output_file << "], \"energy\": " << E << ", \"elapsed\": " << elapsed.count() << "}\n";
.
1188c
double GraphMatching::ComputeEnergy(const int* solution_left)
.
6a

extern std::ofstream output_file;
extern std::chrono::time_point<std::chrono::steady_clock> clock_start;

.
0a
#include <fstream>
#include <chrono>
.
wq
