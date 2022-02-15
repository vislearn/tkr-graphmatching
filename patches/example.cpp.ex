73,74d
70c
	if (output_file)
		output_file.precision(std::numeric_limits<double>::max_digits10);
	clock_start = std::chrono::steady_clock::now();
	m->SolveDD(max_iter, 1e-10);

	if (output_file) {
		auto elapsed = std::chrono::duration_cast<std::chrono::duration<double>>(std::chrono::steady_clock::now() - clock_start);
		const auto* solution = m->GetSolution();
		output_file << "{\"labeling\": [";
		for (int i = 0; i < m->GetN0(); ++i) {
			if (i > 0)
				output_file << ", ";
			output_file << solution[i];
		}
		output_file << "], \"energy\": " << m->ComputeEnergy(solution);
		output_file << ", \"elapsed\": " << elapsed.count() << "}" << std::endl;
		output_file.close();
	}
.
65,68c
	for (int i = 1; i < argc - 1; ++i) {
		const std::string arg = argv[i];
		if (arg == "--linear") {
			m->AddLinearSubproblem();
		} else if (arg == "--maxflow") {
			m->AddMaxflowSubproblem();
		} else if (arg == "--local") {
			const int nodes_per_subproblem = atoi(argv[++i]);
			if (nodes_per_subproblem < 2) {
				std::cerr << "Local subproblem size should be >= 2." << std::endl;
				std::exit(1);
			}
			// Parameter is differently interpreted in `AddLocalSubproblems`.
			// Value 1 would be interpreted as 2 nodes per local subproblem.
			m->AddLocalSubproblems(nodes_per_subproblem - 1);
		} else if (arg == "--tree") {
			m->AddTreeSubproblems();
		} else if (arg == "--max-iter") {
			max_iter = atoi(argv[++i]);
		} else if (arg == "--output") {
			output_file.open(argv[++i]);
		} else {
			std::cerr << "Unknown parameter: " << arg << std::endl;
			return 1;
		}
	}
.
63c
	int max_iter = 1000;
	GraphMatching* m = LoadMatchingFile(argv[argc - 1]);
.
61c
	if (argc < 2) {
		std::cerr << argv[0] << " [--linear] [--maxflow] [--local INT] [--tree] [--max-iter INT] [--output FILENAME] FILENAME" << std::endl;
		return 1;
	}
.
59c
int main(int argc, const char** argv)
.
4a
std::ofstream output_file;
std::chrono::time_point<std::chrono::steady_clock> clock_start;


.
1a

.
0a
#include <fstream>
#include <iostream>
#include <limits>
#include <string>
#include <chrono>

.
wq
