with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Numerics.Discrete_Random;

PROCEDURE Random_Numbers is
  FUNCTION Hash_Truncation (K: String) RETURN Natural is
    Last3: String(1..3);
  BEGIN
    Last3 := K (K'Last - 2 .. K'Last);
    RETURN Integer'Value (Last3);
  END Hash_Truncation;

------------------------------------------------------------------
--| Generates 100 random hash codes in the range 0..999
--| Keys are in the range 111111..999999
--| Uses the random number generator from Ada.Numerics

  SUBTYPE KeyRange IS Positive RANGE 111111..999999;
  SUBTYPE HashRange IS Natural RANGE 0..999;

  RandomKey: KeyRange;
  KeyString: String(1..7); -- to hold string form of key
  HashValue: HashRange;

  PACKAGE RandomKeys IS NEW Ada.Numerics.Discrete_Random(Result_Subtype => KeyRange);

  G: RandomKeys.Generator;

BEGIN
  RandomKeys.Reset (Gen => G);  -- starts G from time of day clock
  FOR Row IN 1..20 LOOP        -- displays 20 rows of 5 pairs <k, h(k)>
    FOR Num IN 1..5 LOOP
      RandomKey := RandomKeys.Random(Gen => G); -- integer
      KeyString := Integer'Image(RandomKey);    -- to string
      HashValue := Hash_Truncation(K => KeyString);

      Ada.Text_IO.Put(Item => KeyString);
      Ada.Integer_Text_IO.Put(Item => HashValue, Width => 4);
      --Ada.Text_IO.Put(Item => "   ");
    Ada.Text_IO.New_Line;

    END LOOP;
  END LOOP;
end Random_Numbers;
