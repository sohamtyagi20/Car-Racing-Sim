class Race {
  String eventName;
  ArrayList<Racer> racers;
  Host host;

  Race (String eN, Host h) {
    this.eventName = eN;
    this.host = h;
    racers= new ArrayList<Racer>();
  }


  void runEvent() {
    float s = 0;
    float percent = 0;
    float r = random(0, 1);
    float r1 = 0, r2 = 0, r3 = 0, r4 = 0;
    String racerN = "";
    String racer2 = "";
    String racer3 = "";
    String [] randomn = new String[2];
    ArrayList<String> names = new ArrayList<String>();


    for ( int i = 0; i < racers.size(); i++) {
      s += racers.get(i).racerInte + racers.get(i).drivingSkills + racers.get(i).reaction ;
    }
    for ( int i = 0; i < racers.size(); i++) {
      percent = racers.get(i).sum / s;
      racers.get(i).per = percent;
    }

    for ( int i = 0; i < racers.size(); i++) {
      if (i == 0) { 
        r1 = racers.get(i).per;
      } else if (i == 1) {
        r2 = racers.get(i).per;
      } else if ( i == 2) {
        r3 = racers.get(i).per;
      } else if ( i == 3) {
        r4 = racers.get(i).per;
      }
    }
    if (r < r1) {
      racers.get(0).winner = true;
    } else if (r < r1 + r2) {
      racers.get(1).winner = true;
    } else if (r < r1 + r2 + r3) {
      racers.get(2).winner = true;
    } else if (r < r1 + r2 + r3 + r4) {
      racers.get(3).winner = true;
    }
    for ( int i = 0; i < racers.size(); i++) { // to get the name of winner
      if (racers.get(i).winner == true) {
        racerN = racers.get(i).racerName;
      } 
      if (racers.get(i).winner != true) {
        names.add(racers.get(i).racerName);
      }
    } 
    for (int i = 0; i < 2; i++) {
      randomn[i] = names.get(int( random(0, names.size() ))); 
      if ( randomn[1] == randomn[0]) {
        while ( randomn[1] == randomn[0]) {
          randomn[1] = names.get(int( random(0, names.size() )));
        }
      }
    }
    racer2 = randomn[0];
    racer3 = randomn[1];
    update(racerN, racer2, racer3);
    delay(1000);
    winner(racerN);
  }

  void winner(String win) {
    println("Ladies and Gentleman, after this amazing race the winner has been decided!");
    delay(1000);
    println("The winner is...");
    delay(800);
    println("...");
    delay(800);
    println("...");
    delay(800);
    println(win+"!");
    delay(800);
    println("Congratulations to", win, "for winning this amazing competition.");
  }

  void update(String first, String second, String third) { // to update viewers on whos winning
    String[] top3 = {first, second, third};
    String numberOne = "";
    String numberTwo = "";
    String numberThree = "";
    for (int i = 0; i < 1; i++) {
      numberOne = top3[int(random(0, 3))];
      numberTwo = top3[int(random(0, 3))];
      if (numberOne == numberTwo) {
        while (numberOne == numberTwo) {
          numberTwo = top3[int(random(0, 3))];
        }
      } 
      numberThree = top3[int(random(0, 3))];
      if (numberOne == numberThree || numberTwo == numberThree) {
        while (numberOne == numberThree || numberTwo == numberThree) {
          numberThree = top3[int(random(0, 3))];
        }
      }
    }
    println("This is what our top 3 is looking like");
    println("Curently", numberOne, "is in the lead.", numberOne, "can't get too commfy because they have", numberTwo, "right behind them! And", numberThree, "is behind both of them and trying to come alive and take that number one spot");
    println("1st:", numberOne);
    println("2nd:", numberTwo);
    println("3rd:", numberThree);
    println("------------------------------------------------------------------------------------");
  }
}
