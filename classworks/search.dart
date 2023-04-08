abstract class Search {
  int search(List<int> values, int SearchValue);
}

class BinarySearch extends Search {
  @override
  int search(List<int> values, int SearchValue) {
    int min = 0;
    int max = values.length - 1;

    while (min <= max) {
      int mid = ((min + max) / 2).floor();
      if (values[mid] == SearchValue) {
        return mid;
      } else if (values[mid] < SearchValue) {
        min = mid + 1;
      } else {
        max = mid - 1;
      }
    }
    return -1;
  }
}

class LinearSearch extends Search {
  int search(List<int> values, int SearchValue) {
    for (int i = 0; i < values.length; i++) {
      if (values[i] == SearchValue) {
        return i;
      }
    }
    return -1;
  }
}

void main() {
  var binarySearch = BinarySearch();
  int binaryResult = binarySearch.search([1, 2, 3, 4], 1);

  var linearSearch = LinearSearch();
  int linearResult = linearSearch.search([1, 2, 3, 4, 5, 6], 6);

  if (binaryResult == -1) {
    print("Binary search: not found");
  } else {
    print("Binary search: found at index $binaryResult");
  }

  if (linearResult == -1) {
    print("Linear search: not found");
  } else {
    print("Linear search: found at index $linearResult");
  }
}
