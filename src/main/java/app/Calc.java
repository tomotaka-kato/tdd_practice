package myapp;

public class Calc {

  private int base;

  // 基準となる値を設定
  public Calc(int base) {
    this.base = base;
  }

  // 足す
  public int plus(int num) {
    return base + num;
  }

  // 引く
  public int minus(int num) {
    return base - num;
  }
}
