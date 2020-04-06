package body Generator is

   subtype N is Integer range 33 .. 126;
   function Create_Random_Character return Character is
      package Random_N is new Ada.Numerics.Discrete_Random(N);
      G : Random_N.Generator;
   begin
      Random_N.Reset(G);
      return Character'Val(Random_N.Random(G));

   end Create_Random_Character;


end Generator;
