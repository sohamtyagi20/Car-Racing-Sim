Host Soham = new Host("Soham");

Race daytona = new Race("Daytona 500", Soham);

Racer Lewis = new Racer("Lewis", "Ireland", 5, 5, 1, 5, "Cocky");
Racer Mike = new Racer("Mike", "Canada", 4, 3, 5, 3, "Humble");
Racer Hamilton = new Racer("Hamilton", "Germany", 2, 4, 4, 2, "Happy");
Racer Bob = new Racer("Bob", "America", 1, 1, 1, 0, "Passive Aggressive");

void setup() {
  Soham.introduction(daytona);
  delay(500);
  Soham.introCont(Mike);
  delay(500);
  Soham.introCont(Bob);
  delay(500);
  Soham.introCont(Lewis);
  delay(500);
  Soham.introCont(Hamilton);
  delay(500);
  daytona.racers.add( Mike );
  daytona.racers.add( Bob);
  daytona.racers.add(Lewis);
  daytona.racers.add(Hamilton);
  delay(500);
  Soham.racerChances();
  delay(500);
  Soham.startRace();
  delay(500);
  daytona.runEvent();
  delay(500);
  Soham.interview("David Aldridge");
  delay(500);
  Soham.endGames();
}
