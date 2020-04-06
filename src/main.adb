with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Generator;

procedure Main is
   PwLngth : Integer;


begin
   Put("Enter length of your password: ");
   Get(PwLngth);
   Put(PwLngth);

   declare
      Password : String(1..PwLngth);
   begin

      for C of Password loop
         C := Generator.Create_Random_Character;
      end loop;

      Put_Line(Password);
   end;

end Main;
