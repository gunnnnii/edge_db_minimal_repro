module default {
 scalar type grade extending int16 {
    constraint min_value(0);
    constraint max_value(100);
  }
  
  type Test {
    required property grade -> grade;
  }
}
