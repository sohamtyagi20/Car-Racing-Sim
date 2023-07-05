class Host {
  String hostName;
  ArrayList<Racer> racers;

  Host(String n) {
    this.hostName = n;
    racers= new ArrayList<Racer>();
  }
  void introduction(Race r) {
    println("Welcome to the", year(), r.eventName, "World Champoinship Final. I'm your host", this.hostName+"!");
    println("------------------------------------------------------------------------------------");
  }

  void introCont(Racer r) {
    racers.add(r);
    r.desribe();
  }

  void racerChances() { // Showing what chance each racer has to win
    println("------------------------------------------------------------------------------------");
    float s = 0;
    float percent = 0;
    for ( int i = 0; i < racers.size(); i++) {
      s += racers.get(i).racerInte + racers.get(i).drivingSkills + racers.get(i).reaction;
    }
    for ( int i = 0; i < racers.size(); i++) {
      percent = racers.get(i).sum / s;
      racers.get(i).per = percent;
    }
    println("Here are the odds that each racer has to win today: ");
    for (int i = 0; i < racers.size(); i++) {
      println(racers.get(i).racerName, "has a", racers.get(i).per*100+"% chance to win today.");
    }
  }
  void startRace() {
    println("------------------------------------------------------------------------------------");
    println("The race beings in ");
    delay(500);
    println("Three...");
    delay(1000);
    println("Two...");
    delay(1000);
    println("One...");
    delay(1000);
    println("Let the race begin!");
    println("------------------------------------------------------------------------------------");
  }
  void endGames() {
    println("------------------------------------------------------------------------------------");
    println("This years competition will go down as one of the greatest sporting events in recent times.");
    println("If you witnessed this amazing competition, you truly watched something that can never be experinced again.");
    println("Goodnight and see you next time.");
  }

  void interview(String reporter) { // Interview for winner based on nature
    String w = "";
    Racer r = new Racer("", "", 0, 0, 0, 0, "");
    for (int i = 0; i < racers.size(); i++) {
      if (racers.get(i).winner == true) {
        w = racers.get(i).racerName;
        r = racers.get(i);
      }
    }
    println("------------------------------------------------------------------------------------");
    println("Well now we have the winner of this competition,", w, "with us on the sideline, getting interviewed by, the one, the only", reporter+"!");
    println();
    println("*buzz*");
    println("Hey guys it's me,", reporter, "and I'm joined by the winner of this race", w+".");
    println("So",w,"how did you feel about this competition?");
    println();
    r.response();
    println();
    if (r.nature.equals( "Cocky")) {
      println(" WOW, fiery words coming from the World Champion, looks like this will be the start of a new rivalry between these racers.");
    } else if (r.nature.equals("Humble")) {
      println("That's a really humble and gracious response. It's clear that you put in a lot of hard work and effort to get to this point, and it's great to see that you're able to appreciate the challenges that came with the competition. Congratulations on your performance!");
    } else if (r.nature.equals("Passive Aggressive ")) {
      println("I can understand that the competition was challenging and required a lot of effort. Winning is never easy, and I'm glad that you were able to overcome those obstacles and come out on top.");
    } else if (r.nature.equals("Happy")) {
      println("Congratulations! That's an amazing achievement and it's great to see how thrilled you are. It sounds like this win means a lot to you and your team, and I'm so glad that all your hard work and dedication paid off.");
    }
  }
}
