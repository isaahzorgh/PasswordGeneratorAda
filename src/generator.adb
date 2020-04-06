package body Generator is

   subtype PW_Char is Character range '!'.. '~';

   package Random_N is new Ada.Numerics.Discrete_Random(PW_Char);
   G : Random_N.Generator;

   function Create_Random_Character return Character is
        (Random_N.Random(G));

begin
   Random_N.Reset(G);

end Generator;
