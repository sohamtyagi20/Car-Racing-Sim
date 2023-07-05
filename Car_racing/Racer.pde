class Racer {
  String racerName;
  String country;
  int racerInte;
  int drivingSkills;
  int reaction;
  int timesWon;
  String nature;
  boolean winner;
  int sum;
  float per;
  String [] responseBasedOnNature;


  Racer(String n, String c, int rI, int dS, int r, int tW, String type) {
    this.racerName = n;
    this.country = c;
    this.racerInte = rI;
    this.drivingSkills = dS;
    this.reaction = r;
    this.timesWon = tW;
    this.nature = type;
    this.winner = false;
    this.responseBasedOnNature = new String[2];
    this.sum = this.racerInte + this.drivingSkills + this.reaction;
  }
  void desribe() {
    if (timesWon >= 5) {
      println("From all the way from", this.country, "we have competing with us today...", this.racerName+".", this.racerName, "has won an astounding", this.timesWon, "times so far.");
    } else if (timesWon > 0) {
      println("From all the way from", this.country, "we have competing with us today...", this.racerName+".", this.racerName, "has won", this.timesWon, "times so far.");
    } else {
      println("From all the way from", this.country, "we have competing with us today...", this.racerName+".", this.racerName, "has won", this.timesWon, "times so far.", this.racerName, "is still looking for his first win tonight.");
    }
  }
  void response() {
    if (this.nature.equals("Cocky")) {
      responseBasedOnNature[0] =  "It was very easy, becuase I had no competition. My oppenents should have trained harder, not that it would have done anything.";
      responseBasedOnNature[1] = "To be honest, it was really boring. My oppenents were no fun, they were too easy. In fact it was so boring I almost fell asleep while driving. ";
      println(responseBasedOnNature[int(random(0, 2))]);
    } else if (this.nature.equals("Humble")) {
      responseBasedOnNature[0] =  "It was a very humbling experience, seeing all of these great racers here. I gave it my all out there on the track and I'm proud of how I performed. Of course, there's always room for improvement and I'll keep working hard to keep getting better.";
      responseBasedOnNature[1] = "I'm humbled by the experience of competing against such talented racers. It was a tough competition, but I learned a lot and had a great time pushing myself to be the best I could be.";
      println(responseBasedOnNature[int(random(0, 2))]);
    } else if (this.nature.equals("Passive Aggressive")) {
      responseBasedOnNature[0] =  "I'm happy to have won, but it was definitely a challenging race. I worked harder than the other racers and I had to because I had to deal with other frustrating obstacles.";
      responseBasedOnNature[1] = "Well, it's about time I won something. I've been working my butt off for months and it's nice to finally get some recognition. I just wish I didn't have to fight tooth and nail for every inch of progress. Some people just seem to have everything handed to them.";
      println(responseBasedOnNature[int(random(0, 2))]);
    } else if (this.nature.equals( "Happy")) {
      responseBasedOnNature[0] =  "I feel amazing! Winning this race is such an incredible feeling and I'm so proud of myself. I worked so hard for this and it's incredible to see all that effort pay off. I couldn't be happier right now!";
      responseBasedOnNature[1] = "I'm over the moon! This was such a tough race, but I knew I had it in me to pull through. The rush of crossing that finish line first is indescribable. It's moments like these that make all the long hours of training and preparation worth it. I'm just so grateful for this opportunity and to everyone who helped me get here.";
      println(responseBasedOnNature[int(random(0, 2))]);
    }
  }
}
