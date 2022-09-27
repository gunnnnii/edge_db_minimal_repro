CREATE MIGRATION m1lnyu6ogeytlvojdc35cwckolgo6olkah7f6ejx5c243ustamzzka
    ONTO initial
{
  CREATE SCALAR TYPE default::grade EXTENDING std::int16 {
      CREATE CONSTRAINT std::max_value(100);
      CREATE CONSTRAINT std::min_value(0);
  };
  CREATE TYPE default::Test {
      CREATE REQUIRED PROPERTY grade -> default::grade;
  };
};
