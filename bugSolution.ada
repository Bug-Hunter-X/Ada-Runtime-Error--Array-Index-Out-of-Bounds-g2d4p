```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Positive_Index is Integer range 1..10;
   Index : Positive_Index;
   Found : Boolean := False;
begin
   for Index in My_Arr'Range loop
      if My_Arr(Index) = 5 then
         Found := True;
         exit;
      end if;
   end loop;

   if Found and then Index + 1 <= My_Arr'Last then
       Put_Line(My_Arr(Index + 1));
   elsif Found then
       Put_Line("Element 5 is the last element."); --Handle the case where index +1 is out of bounds
   else
       Put_Line("Element 5 not found.");
   end if;
end Example;
```