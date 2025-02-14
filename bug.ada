```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Positive_Index is Integer range 1..10;
   Index : Positive_Index;
begin
   for Index in My_Arr'Range loop
      if My_Arr(Index) = 5 then
         exit;
      end if;
   end loop;
   -- Accessing an array element beyond the range in the next statement
   Put_Line(My_Arr(Index + 1)); 
   -- Compilation will not result in error as the code is syntactically correct.
   -- However runtime error can occur if the loop does not exit at 5 and index can be out of bound.
end Example;
```