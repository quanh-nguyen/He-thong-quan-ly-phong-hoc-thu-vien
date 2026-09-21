#include <string>
#include <vector>

std::vector<int> compute_room_scores(const std::vector<int>& room_capacities) {
    std::vector<int> result;
    for (int capacity : room_capacities) {
        result.push_back(capacity * 2);
    }
    return result;
}
