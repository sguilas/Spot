int total = 0;
int bar = 45; // the bar weighs 45 lbs
int last_45 = 0;
int last_35 = 0;
int last_25 = 0;
int last_10 = 0;
int last_5 = 0;

void calc_45(int plates) {
  total -= last_45;
  int weight = 45 * plates;
  last_45 = weight;
  total += weight;
}

void calc_35(int plates) {
  total -= last_35;
  int weight = 35 * plates;
  last_35 = weight;
  total += weight;
}

void calc_25(int plates) {
  total -= last_25;
  int weight = 25 * plates;
  last_25 = weight;
  total += weight;
}

void calc_10(int plates) {
  total -= last_10;
  int weight = 10 * plates;
  last_10 = weight;
  total += weight;
}

void calc_5(int plates) {
  total -= last_5;
  int weight = 5 * plates;
  last_5 = weight;
  total += weight;
}

String calc_total() {
  int all = total + bar;
  String ans = all.toString();
  return ans;
}
