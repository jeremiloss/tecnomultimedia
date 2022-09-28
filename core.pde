class Core {
  Dogs  p1;
  Dogs  p2;
  Birds b1;
  Bg bgu;
  Core() {
    bgu = new Bg();
    p1 = new Dogs(12,5);
    b1 = new Birds(12,2);
    p2 = new Dogs(50,9);
    
  }
  void display() {
    bgu.display();
    p1.display();
    p2.display();
    b1.display();
  }
}
